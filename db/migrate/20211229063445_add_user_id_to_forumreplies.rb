class AddUserIdToForumreplies < ActiveRecord::Migration[6.1]
  def change
    add_column :forumreplies, :user_id, :integer, foreign_key: true
  end
end
