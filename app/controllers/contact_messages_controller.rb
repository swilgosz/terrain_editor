class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(params[:contact_message])
    if @contact_message.valid?
      ContactMailer.contact_message(@contact_message).deliver_now!
      flash.now[:notice] = I18n.t("notifications.notices.contact_messages.sent")
      @contact_message = ContactMessage.new
    else
      flash.now[:alert] = I18n.t("notifications.alerts.contact_messages.invalid")
    end

    flash_message = render_to_string partial: "shared/flash"
    form = render_to_string partial: "shared/contact_form"
    render json: { form: form, flash: flash_message }
  end
end
