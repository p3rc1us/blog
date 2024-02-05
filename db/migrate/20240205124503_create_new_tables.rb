class CreateNewTables < ActiveRecord::Migration[7.1]
  def change
    create_table :new_tables do |t|

      t.timestamps
    end
  end
end
