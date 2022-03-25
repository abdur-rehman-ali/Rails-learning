class AddEmailToStuds < ActiveRecord::Migration[5.2]
  def change
    add_column :studs, :email, :string
  end
end
