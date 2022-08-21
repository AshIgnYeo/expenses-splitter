class BillsController < ApplicationController
  before_action :set_bill, only: %i[show]
  before_action :set_event, only: %i[new create]

  def show
    if @bill.receipt.attached?
      receipt = url_for @bill.receipt
      # receipt = ActiveStorage::Blob.service.path_for(@bill.receipt.key)
      rt_receipt = RTesseract.new(receipt)
      @receipt_text = rt_receipt.to_s
    end
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    @bill.event = @event

    if @bill.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_bill
    @bill = Bill.find(params[:id])
    @participants = @bill.event.participants
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def bill_params
    params.require(:bill).permit(%i[name description gst service_charge receipt])
  end
end
