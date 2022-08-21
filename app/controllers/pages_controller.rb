class PagesController < ApplicationController
  def home
    # image_path = root_url[0...-1] + ActionController::Base.helpers.image_path('receipt.jpg')
    # image = RTesseract.new(image_path, lang: 'eng')
    # @image = image.to_s
    render current_user ? :home_user : :home_public
  end
end
