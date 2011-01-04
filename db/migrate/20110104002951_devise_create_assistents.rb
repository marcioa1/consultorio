class DeviseCreateAssistents < ActiveRecord::Migration
  def self.up
    create_table(:assistents) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :assistents, :email,                :unique => true
    add_index :assistents, :reset_password_token, :unique => true
    add_index :assistents, :confirmation_token,   :unique => true
    # add_index :assistents, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :assistents
  end
end
