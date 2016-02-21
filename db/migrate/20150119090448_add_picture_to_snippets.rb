class AddPictureToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :picture, :string
  end
end
