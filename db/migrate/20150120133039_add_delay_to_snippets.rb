class AddDelayToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :delay, :datetime
  end
end
