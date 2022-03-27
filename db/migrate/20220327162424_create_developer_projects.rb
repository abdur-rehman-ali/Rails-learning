class CreateDeveloperProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :developer_projects do |t|
      t.references :developer, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
