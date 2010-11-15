class CreateProteticos < ActiveRecord::Migration
  def self.up
    create_table :proteticos do |t|
      t.string :nome
      t.string :telefone

      t.timestamps
    end
  end

  def self.down
    drop_table :proteticos
  end
end
