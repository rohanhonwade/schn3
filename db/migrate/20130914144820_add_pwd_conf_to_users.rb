class AddPwdConfToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pwd_conf, :string
  end
end
