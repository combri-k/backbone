class CreatePicture < ActiveRecord::Migration
  def up
    create_table :pictures do |t|
      t.string            :title
      t.string            :slug
      t.has_attached_file :file
      t.integer           :views
      t.timestamps
    end
  end

  def down
    drop_attached_file :pictures, :file
    drop_table :pictures
  end
end
