class CreateCatBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_breeds do |t|
      t.string :breed, null: false

      t.timestamps
    end
  end
end
