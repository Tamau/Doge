class CreateDogers < ActiveRecord::Migration
  def change
    create_table :dogers do |t|
      t.string :name
      t.integer :awesome
      t.float :wow_factor
      t.string :color

      t.timestamps
    end
  end
end
