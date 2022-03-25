class CreateStuds < ActiveRecord::Migration[5.2]
  def change
    create_table :studs do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
