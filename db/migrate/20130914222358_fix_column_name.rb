class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :pwd_conf, :password_confirmation
  end
end
