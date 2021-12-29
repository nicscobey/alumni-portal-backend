class Forumreply < ApplicationRecord 
    belongs_to :forum
    has_one :user
end 