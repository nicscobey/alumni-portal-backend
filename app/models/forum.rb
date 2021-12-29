class Forum < ApplicationRecord
  belongs_to :user
  has_many :forumreplies
end
