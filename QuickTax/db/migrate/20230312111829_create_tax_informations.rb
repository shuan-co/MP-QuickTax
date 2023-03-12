class CreateTaxInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :tax_informations do |t|

      t.timestamps
    end
  end
end
