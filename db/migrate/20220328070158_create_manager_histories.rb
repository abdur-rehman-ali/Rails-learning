class CreateManagerHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_histories do |t|
      t.date :joining_date
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
