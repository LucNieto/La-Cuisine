class CreateQuantifications < ActiveRecord::Migration[5.1]
  def change
    create_table :quantifications do |t|
      t.references :ingredient, foreign_key: true
      t.references :recipe, foreign_key: true
      t.integer :cantidad
      t.string :tipo_medida

      t.timestamps
    end
  end
end
