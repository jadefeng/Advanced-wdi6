class AddTypeToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :type, :string
    # Magic from having a TYPE!
  end
end
