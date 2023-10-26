class Sessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :token
      t.integer :user_id
      
      t.timestamps
    end
    add_index(:sessions, :user_id)
    add_foreign_key :sessions, :users, column: :user_id
  end
end
