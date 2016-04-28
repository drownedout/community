class AddLocationToCommunities < ActiveRecord::Migration
  def change
    add_column :communities, :location, :string
  end
end
