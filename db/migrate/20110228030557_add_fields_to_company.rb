class AddFieldsToCompany < ActiveRecord::Migration
  def self.up
    add_column :companies, :name, :string
    add_column :companies, :term, :string
    add_column :companies, :index, :float
    add_column :companies, :positive, :integer
    add_column :companies, :negative, :integer
    add_column :companies, :nuetral, :integer
    add_column :companies, :last_refresh, :date
  end

  def self.down
    remove_column :companies, :last_refresh
    remove_column :companies, :nuetral
    remove_column :companies, :negative
    remove_column :companies, :positive
    remove_column :companies, :index
    remove_column :companies, :term
    remove_column :companies, :name
  end
end
