class CreateDatapoints < ActiveRecord::Migration
  def self.up
    create_table :datapoints do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps, :default => :true

      t.timestamps
    end
  end

  def self.down
  	drop_table :datapoints
  end
end
