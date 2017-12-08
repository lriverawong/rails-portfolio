class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :name, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
    # same as:
    # if self.main_image == nil
    #   self.main_image = "http://via.placeholder.com/600x400"
    # end
  end

end
