class AddForumIdToForumreplies < ActiveRecord::Migration[6.1]
  def change
    add_column :forumreplies, :forum_id, :integer
  end
end
