class CreateSentiments < ActiveRecord::Migration
  def self.up
    create_table :sentiments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sentiments
  end
end
