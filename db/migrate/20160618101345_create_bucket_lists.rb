class CreateBucketLists < ActiveRecord::Migration
  def change
    create_table :bucket_lists do |t|
      t.string :title
      t.text :subtitle
      t.timestamps
    end
  end
end
