class CreateScreencastTags < ActiveRecord::Migration
  def self.up
    create_table :screencast_tags do |t|
      t.integer :screencast_id
      t.integer :tag_id

      t.timestamps
    end
  end

  def self.down
    drop_table :screencast_tags
  end
end
