class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :message
      t.integer :user_id
      
      t.timestamps
    end
    add_foreign_key :tweets, :users, column: :user_id
  end
end
   