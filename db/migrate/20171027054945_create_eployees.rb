class CreateEployees < ActiveRecord::Migration[5.1]
  def change
    create_table :eployees do |t|
      t.string :name
      t.string :email
      t.boolean :manager
      t.timestamps
    end
  end
end
