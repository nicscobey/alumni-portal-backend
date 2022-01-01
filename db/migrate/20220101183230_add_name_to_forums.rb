class AddNameToForums < ActiveRecord::Migration[6.1]
  def change
    add_column :forums, :firstname, :string 
    add_column :forums, :lastname, :string 
  end
end
