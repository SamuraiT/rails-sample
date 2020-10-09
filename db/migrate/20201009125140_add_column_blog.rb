class AddColumnBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :uuid, :string
  end
end
