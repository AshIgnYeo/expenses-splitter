class BillsController < ApplicationController
  before_action :set_bill, only: %i[show]

  def show; end

  private

  def set_bill
    @bill = Bill.find(params[:id])
    @participants = @bill.event.participants
  end
end
