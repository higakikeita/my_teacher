class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :teacher_image
      t.references :teacher,null: false, foreign_key: true
      t.timestamps
    end
  end
end
