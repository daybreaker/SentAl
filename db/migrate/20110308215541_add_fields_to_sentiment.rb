class AddFieldsToSentiment < ActiveRecord::Migration
  def self.up
    add_column :sentiments, :index, :float
    add_column :sentiments, :positive, :integer
    add_column :sentiments, :negative, :integer
    add_column :sentiments, :nuetral, :integer
    add_column :sentiments, :last_refresh, :date
    add_column :sentiments, :company_id, :integer
    remove_column :companies, :last_refresh
    remove_column :companies, :nuetral
    remove_column :companies, :negative
    remove_column :companies, :positive
    remove_column :companies, :index
  end

  def self.down
    remove_column :sentiments, :index
    remove_column :sentiments, :positive
    remove_column :sentiments, :negative
    remove_column :sentiments, :nuetral
    remove_column :sentiments, :last_refresh
    remove_column :sentiments, :company_id
    add_column :companies, :index, :float
    add_column :companies, :positive, :integer
    add_column :companies, :negative, :integer
    add_column :companies, :nuetral, :integer
    add_column :companies, :last_refresh, :date
  end
end
