class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.text :description
      t.boolean :black_list

      t.timestamps
    end
  end
end
