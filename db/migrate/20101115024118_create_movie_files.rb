class CreateMovieFiles < ActiveRecord::Migration
  def self.up
    create_table :movie_files do |t|
      t.integer :screencast_id
      t.string :name
      t.string :path
      t.string :extension

      t.timestamps
    end
  end

  def self.down
    drop_table :movie_files
  end
end
