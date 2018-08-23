class AddUsernameAndPasswordDigestToFans < ActiveRecord::Migration[5.2]
  def change
    add_column :fans, :username, :string
    add_column :fans, :password_digest, :string
  end
end
