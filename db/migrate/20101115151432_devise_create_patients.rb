class DeviseCreatePatients < ActiveRecord::Migration
  def self.up
    create_table(:patients) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.string      :name
      t.string      :phone_number
      t.references  :table_price


      t.timestamps
    end

    add_index :patients, :email,                :unique => true
    add_index :patients, :reset_password_token, :unique => true
    add_index :patients, :confirmation_token,   :unique => true
    # add_index :patients, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :patients
  end
end
