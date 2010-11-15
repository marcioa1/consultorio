class CreateTabelas < ActiveRecord::Migration
  def self.up
    create_table :tabelas do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :tabelas
  end
end
