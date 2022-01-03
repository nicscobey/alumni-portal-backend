class AddProgramToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :program, :string
  end
end
