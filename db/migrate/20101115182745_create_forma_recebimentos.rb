class CreateFormaRecebimentos < ActiveRecord::Migration
  def self.up
    create_table :forma_recebimentos do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :forma_recebimentos
  end
end
