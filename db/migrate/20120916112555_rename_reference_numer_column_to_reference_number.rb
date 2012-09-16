class RenameReferenceNumerColumnToReferenceNumber < ActiveRecord::Migration
  def up
    rename_column :invoices, :reference_numer, :reference_number
  end

  def down
    rename_column :invoices, :reference_number, :reference_numer
  end
end
