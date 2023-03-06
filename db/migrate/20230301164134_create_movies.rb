class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, :null => false
      t.integer :year, :null => false
    end
  end
end
