class Pin < ActiveRecord::Base

  scope :copyrighted, -> { where(copyrighted: true) }
  scope :pending_copyright, -> { where(pending_copyright: true) }

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

  def self.as_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |item|
        csv << item.attributes.values_at(*column_names)
      end
    end
  end

  state_machine :state, initial: :pending do
    event :process do
      transition pending: :vetting
    end

    event :failed do
      transition vetting: :failed
    end

    event :publish do
      transition vetting: :published
    end

  end
end
