class CreateWpLinks < ActiveRecord::Migration
  def change
    create_table :wp_links do |t|
      t.integer :link_id
      t.string :link_url
      t.string :link_name
      t.string :link_image
      t.string :link_target
      t.string :link_description
      t.string :link_visible
      t.integer :link_owner
      t.integer :link_rating
      t.datetime :link_updated
      t.string :link_rel
      t.text :link_notes
      t.string :link_rss

      t.timestamps
    end
  end
end
