class CreateCarasols < ActiveRecord::Migration
  def change
    create_table :carasols do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
