class AddResourceIdToTitle < ActiveRecord::Migration
  def change
    add_column :titles, :resource_id, :integer
  end
end
