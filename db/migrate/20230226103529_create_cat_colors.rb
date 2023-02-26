class CreateCatColors < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_colors do |t|
      t.string :color, null: false

      t.timestamps
    end
  end
end
