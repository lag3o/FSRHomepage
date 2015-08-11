class CreateRolles < ActiveRecord::Migration
  def change
    create_table :rolles do |t|
      t.string :name
      t.timestamps
    end
  end
end
