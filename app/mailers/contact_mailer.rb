class ContactMailer < ApplicationMailer
  def contact_message (contact_message)
    @contact_message = contact_message

    mail(to: "sebastian.wilgosz@gmail.com", reply_to: @contact_message.email, subject: "TerrainEditor: #{@contact_message.subject}")
  end
end
