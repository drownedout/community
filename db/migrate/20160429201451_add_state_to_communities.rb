class AddStateToCommunities < ActiveRecord::Migration
  def change
    add_column :communities, :state, :string
  end
end
