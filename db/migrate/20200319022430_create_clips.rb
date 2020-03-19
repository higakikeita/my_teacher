class CreateClips < ActiveRecord::Migration[5.0]
  def change
    create_table :clips do |t|
      t.references :user, null:false
      t.references :teacher, null:false
      t.timestamps
    end
    # add_index :clips, :user_id
    # add_index :clips, :teacher_id
  end
end
