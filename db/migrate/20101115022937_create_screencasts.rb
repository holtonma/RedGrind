class CreateScreencasts < ActiveRecord::Migration
  def self.up
    create_table :screencasts do |t|
      t.string :name
      t.text :description
      t.datetime :published_on
      t.string :small_screenshot
      t.string :large_screenshot
      t.integer :cost_in_pennies

      t.timestamps
    end
  end

  def self.down
    drop_table :screencasts
  end
end
