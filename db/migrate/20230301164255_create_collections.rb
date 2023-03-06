class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :movie_id
    end
  end
end
