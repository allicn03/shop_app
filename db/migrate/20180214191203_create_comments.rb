class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, index: true#foreign_key: true
      t.text :body
      #t.string :body
      #t.string :text
      t.integer :rating
      #t.string :product
      #t.string :references
      t.references :product, index: true
      t.timestamps
    end
  end
end
