class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change

    # adds an index on the email column of the users table. The index by itself doesn’t enforce uniqueness, but the option unique: true
    add_index :users, :email, unique: true
    
  end
end
