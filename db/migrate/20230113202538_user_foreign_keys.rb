class UserForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_reference :admins, :user, foreign_key: true
    add_reference :teachers, :user, foreign_key: true
    add_reference :students, :user, foreign_key: true
  end
end
