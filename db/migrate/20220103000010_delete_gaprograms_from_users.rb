class DeleteGaprogramsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :gaprograms
  end
end
