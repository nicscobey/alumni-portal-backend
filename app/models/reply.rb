class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :forum
end
