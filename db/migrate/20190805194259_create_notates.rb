class CreateNotates < ActiveRecord::Migration[5.2]
  def change
    create_table :notates do |t|
      t.string :title
      t.string :body
      t.time :time
      t.integer :user_id

      t.timestamps
    end
  end
end
