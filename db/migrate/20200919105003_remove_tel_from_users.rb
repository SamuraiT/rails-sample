class RemoveTelFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :tel, :string
  end
end
