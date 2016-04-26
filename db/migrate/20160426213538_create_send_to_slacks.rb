class CreateSendToSlacks < ActiveRecord::Migration
  def change
    create_table :send_to_slacks do |t|

      t.timestamps null: false
    end
  end
end
