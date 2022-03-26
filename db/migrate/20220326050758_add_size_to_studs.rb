class AddSizeToStuds < ActiveRecord::Migration[5.2]
  def change
    add_column :studs, :size, :string
  end
end
