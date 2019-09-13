class Participant < ApplicationRecord
  belongs_to :article
  belongs_to :author

  validates :article, presence:true
  validates :author, presence:true

  scope :search_article, ->(id){where(article_id:id)}
  scope :search_author, ->(id){where(author_id:id)}
end
