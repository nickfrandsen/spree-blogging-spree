class AddTextToBlogImages < ActiveRecord::Migration
  def change
    change_table :spree_blog_entry_pinterest_images do |t|
      t.text :caption
      t.text :description
    end
  end
end
