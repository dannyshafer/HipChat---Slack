class CreateSendToHipchats < ActiveRecord::Migration
  def change
    create_table :send_to_hipchats do |t|

      t.timestamps null: false
    end
  end
end
