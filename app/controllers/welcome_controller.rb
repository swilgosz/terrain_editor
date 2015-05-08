class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
    @contact_message = ContactMessage.new
  end
end
