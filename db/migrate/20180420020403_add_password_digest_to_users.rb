class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change

    # two methods created when "password_digest:string" was added
    add_column :users, :password_digest, :string
    
  end
end
