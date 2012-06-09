class AddTokenAuthenticatableToUser < ActiveRecord::Migration
  def change
    add_column :users, :token_authenticatable, :string
  end
end