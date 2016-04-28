class AddCommunityIdToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :community_id, :integer
  end
end
