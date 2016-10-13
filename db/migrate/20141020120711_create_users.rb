class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :hashed_password, :null => false
    end
  end
end
