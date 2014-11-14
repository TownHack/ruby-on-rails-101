class CreateTwoots < ActiveRecord::Migration
  def change
    create_table :twoots do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
