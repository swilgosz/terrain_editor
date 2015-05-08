class ContactMessage
  include ActiveAttr::Model
  attribute :email
  attribute :name
  attribute :subject
  attribute :content
  attribute :dummy

  validates :name, :email, :subject, :content, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :content, length: { maximum: 500 }

  def initialize(attributes={})
    attributes.each do |key, value|
      send("#{ key }=", value)
    end
  end

  def persisted?
    false
  end
end
