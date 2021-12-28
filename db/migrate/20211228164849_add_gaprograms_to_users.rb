class AddGaprogramsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gaprograms, :string, array: true, default: []
  end
end
