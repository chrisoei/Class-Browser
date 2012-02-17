class CreateMeths < ActiveRecord::Migration
  def change
    create_table :meths do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
