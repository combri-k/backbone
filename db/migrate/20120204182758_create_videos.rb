class CreateVideos < ActiveRecord::Migration
  def up
    create_table :videos do |t|
      t.string            :title
      t.string            :slug
      t.has_attached_file :file
      t.integer           :views
      t.timestamps
    end
  end

  def down
    drop_attached_file :videos, :file
    drop_table :videos
  end
end
