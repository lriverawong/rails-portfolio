class Technology < ApplicationRecord
  belongs_to :portfolio
  # Technology.create!(name: "Rails", portfolio_id: Portfolio.last.id)
end
