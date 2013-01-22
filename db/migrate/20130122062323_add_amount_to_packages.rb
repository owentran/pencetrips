class AddAmountToPackages < ActiveRecord::Migration
  def change
  	add_column :packages, :amount, :integer
  end
end
