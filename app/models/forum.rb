class Forum < ApplicationRecord
  belongs_to :user
  has_many :forumreplies
  has_many :replies
end
