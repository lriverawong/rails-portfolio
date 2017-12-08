class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  
  validates_presence_of :title, :body
  belongs_to :topic
  # Blog.create!(title: "cool ruby stuff", body: "a body", topic_id: Topic.first.id)
  extend FriendlyId
  friendly_id :title, use: :slugged
  # creation of blog after adding in friendly-id
  # Blog.create!(title: "another blog title", body: "a body text", topic_id: 2)

end
