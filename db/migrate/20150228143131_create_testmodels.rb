class CreateTestmodels < ActiveRecord::Migration
  def change
    create_table :testmodels do |t|
      t.string :productid
      t.integer :devicetype_id
      t.string :manufa
      t.json :functions

      t.timestamps
    end
  end
end
