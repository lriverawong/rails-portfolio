class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # writing a custom scope - rather than adding to the end of the query in the index action
  def self.angular
    where(subtitle: "Angular")
  end

  # another way to use write a custom scope using lambda function
  # this avoids adding too much logic in controller
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails" )}

end
