class AddAttributesToProduct < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :description, :text
  	add_column :products, :release_date, :datetime
  end
end
