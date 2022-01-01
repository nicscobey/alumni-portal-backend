class AddNameToReplies < ActiveRecord::Migration[6.1]
  def change
    add_column :replies, :firstname, :string 
    add_column :replies, :lastname, :string
  end
end
