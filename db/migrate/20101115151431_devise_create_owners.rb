class DeviseCreateOwners < ActiveRecord::Migration
  def self.up
    create_table(:owners) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :owners, :email,                :unique => true
    add_index :owners, :reset_password_token, :unique => true
    add_index :owners, :confirmation_token,   :unique => true
    # add_index :owners, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :owners
  end
end
