class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :explain
      t.integer :university
      t.integer :style
      t.integer :sex
      t.integer :career
      t.integer :category_id
      t.integer :prefecture_id
      t.integer :subject
      t.references :user,index: true, foreign_key: true
      t.timestamps
    end
  end
end
