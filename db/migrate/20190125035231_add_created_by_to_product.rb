class AddCreatedByToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :created_by, :string
  end
end
