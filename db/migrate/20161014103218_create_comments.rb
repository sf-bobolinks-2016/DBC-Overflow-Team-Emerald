class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :comment
      t.integer :user_id, null: false
      t.integer :answer_id, :question_id
      t.integer :vote_val, default: 0
      t.timestamps
    end
  end
end
