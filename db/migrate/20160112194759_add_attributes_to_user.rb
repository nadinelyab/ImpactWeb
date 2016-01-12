class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :country, :string
    add_column :users, :timezone, :string
    add_column :users, :skype_name, :string
    add_column :users, :gender, :string
  end
end
