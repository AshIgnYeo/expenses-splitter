class PagesController < ApplicationController
  def home
    render current_user ? :home_user : :home_public
  end
end
