class CreateBlogEntryPinterestImage < ActiveRecord::Migration
  def self.up
    create_table :spree_blog_entry_pinterest_images do |t|
      t.column :blog_entry_id, :integer
      t.column :pinterest_image_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_blog_entry_pinterest_images
  end
end
