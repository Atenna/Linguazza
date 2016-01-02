class AddGerToWords < ActiveRecord::Migration
  def change
    add_column :words, :ger, :string
  end
end
