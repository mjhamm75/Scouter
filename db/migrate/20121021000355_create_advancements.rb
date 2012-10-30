class CreateAdvancements < ActiveRecord::Migration
  def change
    create_table :advancements do |t|
      t.integer :scout_id
      t.string :rank

      t.timestamps
    end
  end
end
