class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :name
      t.date :birthday

      t.timestamps
    end
  end
end
