class AddProcedureToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :procedure, :text
  end
end
