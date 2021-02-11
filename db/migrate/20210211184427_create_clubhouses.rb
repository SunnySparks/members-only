class CreateClubhouses < ActiveRecord::Migration[6.1]
  def change
    create_table :clubhouses do |t|
      t.text :post

      t.timestamps
    end
  end
end
