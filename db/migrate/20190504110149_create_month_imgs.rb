class CreateMonthImgs < ActiveRecord::Migration[5.2]
  def change
    create_table :month_imgs do |t|
      t.string :month_id
      t.string :month_img

      t.timestamps
    end
  end
end
