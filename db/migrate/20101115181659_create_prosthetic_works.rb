class CreateProstheticWorks < ActiveRecord::Migration
  def self.up
    create_table :trabalho_prosthetics do |t|
      t.references :prosthetic
      t.references :treatment
      t.references :prosthetic_item
      t.decimal    :price, :precision=>8, :scale=>2
      t.date       :date
      t.date       :expected_delivery
      t.date       :devoluction_date
      t.date       :repeat_date
      t.date       :expected_repeat_delivery_date
      t.date       :date_devolucao_repeticao
      t.string     :colour
      t.string     :note

      t.timestamps
    end
  end

  def self.down
    drop_table :trabalho_prosthetics
  end
end
