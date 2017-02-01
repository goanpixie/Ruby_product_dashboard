class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.references :product, index: true

      t.timestamps
    end
  end
end
