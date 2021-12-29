class CreateForumreplies < ActiveRecord::Migration[6.1]
  def change
    create_table :forumreplies do |t|
      t.string :message
      t.timestamps
    end
  end
end
