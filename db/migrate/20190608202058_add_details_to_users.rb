class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :string
    add_column :users, :can_help, :string
    add_column :users, :need_help, :string
    add_column :users, :interested_in, :string
    add_column :users, :admin, :boolean
  end
end
