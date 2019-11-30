class CreateAppData < ActiveRecord::Migration[5.2]
  def change
    create_table :app_data do |t|
    	t.string :system_name
    	t.string :usermail
    	t.integer :userphone, :limit => 8
      t.timestamps
    end
  end
end
