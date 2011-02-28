class AddFieldsToTweets < ActiveRecord::Migration
  def self.up
    add_column :tweets, :company_id, :integer
    add_column :tweets, :from_user_id, :integer
    add_column :tweets, :profile_image_url, :string
    add_column :tweets, :tweet_created_at, :string
    add_column :tweets, :from_user, :string
    add_column :tweets, :tweet_id, :integer
    add_column :tweets, :sentiment, :integer
    add_column :tweets, :to_user_id, :integer
    add_column :tweets, :tweet_text, :string
    add_column :tweets, :to_user, :string
    add_column :tweets, :geo, :string
    add_column :tweets, :iso_language_code, :string
    add_column :tweets, :source, :string
  end

  def self.down
    remove_column :tweets, :source
    remove_column :tweets, :iso_language_code
    remove_column :tweets, :geo
    remove_column :tweets, :to_user
    remove_column :tweets, :tweet_text
    remove_column :tweets, :to_user_id
    remove_column :tweets, :sentiment
    remove_column :tweets, :tweet_id
    remove_column :tweets, :from_user
    remove_column :tweets, :tweet_created_at
    remove_column :tweets, :profile_image_url
    remove_column :tweets, :from_user_id
    remove_column :tweets, :company_id
  end
end
