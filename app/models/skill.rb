class Skill < ApplicationRecord
  validates_presence_of :name, :percent_utilized
end
