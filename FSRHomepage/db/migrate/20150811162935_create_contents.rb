class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content
      t.boolean :accepted
      t.boolean :released
      t.timestamps
    end
  end
end
