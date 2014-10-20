class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.references :bin, index: true

      t.timestamps
    end
  end
end
