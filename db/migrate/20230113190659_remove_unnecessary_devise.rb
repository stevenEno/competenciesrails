class RemoveUnnecessaryDevise < ActiveRecord::Migration[7.0]
  def change
    remove_column :teachers, :created_at
    remove_column :teachers, :updated_at
    remove_column :teachers, :email
    remove_column :teachers, :encrypted_password
    remove_column :teachers, :reset_password_token
    remove_column :teachers, :reset_password_sent_at
    remove_column :teachers, :remember_created_at
    remove_column :students, :created_at
    remove_column :students, :updated_at
    remove_column :students, :email
    remove_column :students, :encrypted_password
    remove_column :students, :reset_password_token
    remove_column :students, :reset_password_sent_at
    remove_column :students, :remember_created_at
    remove_column :admins, :created_at
    remove_column :admins, :updated_at
    remove_column :admins, :email
    remove_column :admins, :encrypted_password
    remove_column :admins, :reset_password_token
    remove_column :admins, :reset_password_sent_at
    remove_column :admins, :remember_created_at
  end
end