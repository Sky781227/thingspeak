class AddChannelIdToApiKeys < ActiveRecord::Migration
  def change
    add_column :api_keys, :channel_id, :integer
  end
end
