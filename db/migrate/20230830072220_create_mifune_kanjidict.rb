class CreateMifuneKanjidict < ActiveRecord::Migration[7.0]
  def change
    create_table :mifune_kanjidict do |t|
      t.string :kanji, index: true, null: false
      t.string :radical
      t.string :radvar
      t.string :phonetic
      t.string :idc
      t.string :classification # originally named 'type'
      t.string :reg_on, array: true
      t.string :reg_kun, array: true
      t.string :onyomi, array: true
      t.string :kunyomi, array: true
      t.string :nanori, array: true
      t.integer :strokes
      t.string :grade
      t.string :jlpt
      t.string :kanken
      t.integer :frequency
      t.string :meaning, array: true
      t.string :compact_meaning, array: true
      t.integer :rtk1_3_old
      t.integer :rtk1_3_new
      t.integer :ko2001
      t.integer :ko2301
      t.integer :wrp_jkf
      t.integer :wanikani
    end
  end
end
