class CreateLogin2s < ActiveRecord::Migration
  def change
    create_table :login2s do |t|
      t.string :userid
      t.string :password

      t.timestamps
    end
  end
end
