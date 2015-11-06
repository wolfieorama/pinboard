class Pin < ActiveRecord::Base
  validates :title, :description, presence: true
  acts_as_votable
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300"}
  validates_attachment :image,
  :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] }

  # It returns the pins whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%")
  end
end
