class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :snippets, :users
    add_index :snippets, [:user_id, :created_at]
  end
end
