class CreateScreencastCategories < ActiveRecord::Migration
  def self.up
    create_table :screencast_categories do |t|
      t.integer :screencast_id
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :screencast_categories
  end
end
