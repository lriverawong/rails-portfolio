class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  # writing a custom scope - rather than adding to the end of the query in the index action
  def self.angular
    where(subtitle: "Angular")
  end

  # another way to use write a custom scope using lambda function
  # this avoids adding too much logic in controller
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails" )}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    # same as:
    # if self.main_image == nil
    #   self.main_image = "http://via.placeholder.com/600x400"
    # end
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '150')
  end

end
