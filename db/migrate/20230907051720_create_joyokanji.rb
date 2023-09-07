class CreateJoyokanji < ActiveRecord::Migration[7.0]
  def change
    create_table :joyokanji do |t|
      t.string :grapheme_orth
      t.string :grapheme_var
      t.string :grapheme_old
      t.string :radical
      t.integer :stroke_count
      t.string :grade
      t.integer :added_year
      t.integer :removed_year
      t.string :onyomis, array: true
      t.string :kunyomis, array: true
      t.index [:grapheme_orth, :grapheme_var, :grapheme_old], unique: true, name: 'joyokanji_index'
    end
  end
end
