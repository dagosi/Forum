class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :topic_id

      t.timestamps
    end
  end
end
