# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_07_051720) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "joyokanji", force: :cascade do |t|
    t.string "grapheme_orth", null: false, limit: 1
    t.string "grapheme_var", limit: 1
    t.string "grapheme_olds", array: true
    t.string "radicals", array: true
    t.integer "stroke_count"
    t.string "grade"
    t.integer "added_year"
    t.integer "removed_year"
    t.string "onyomis", array: true
    t.string "kunyomis", array: true
    t.index ["grapheme_orth", "grapheme_var", "grapheme_olds"], name: "joyokanji_index", unique: true
  end

  create_table "mifune_kanjidict", force: :cascade do |t|
    t.string "grapheme", null: false, limit: 1
    t.string "radical", limit: 1
    t.string "radical_variant", limit: 1
    t.string "phonetic_component", limit: 1
    t.string "idc"
    t.string "classification"
    t.string "joyo_onyomis", array: true
    t.string "joyo_kunyomis", array: true
    t.string "onyomis", array: true
    t.string "kunyomis", array: true
    t.string "nanoris", array: true
    t.integer "stroke_count"
    t.string "grade"
    t.string "jlpt"
    t.string "kanken"
    t.integer "frequency"
    t.string "meanings", array: true
    t.string "compact_meanings", array: true
    t.integer "rtk1_3_old"
    t.integer "rtk1_3_new"
    t.integer "ko2001"
    t.integer "ko2301"
    t.integer "wrp_jkf"
    t.integer "wanikani"
    t.index ["grapheme"], name: "index_mifune_kanjidict_on_grapheme", unique: true
  end

  create_table "tatsum_cdj", force: :cascade do |t|
    t.string "level_for_kanji_and_signs_for_international_students"
    t.integer "ranking_for_kanji_and_signs_for_international_students"
    t.string "level_for_kanji_and_signs_for_general_learners"
    t.integer "ranking_for_kanji_and_signs_for_general_learners"
    t.string "level_for_kanji_and_signs_in_written_japanese"
    t.integer "u_ranking_for_kanji_and_signs_in_written_japanese"
    t.integer "overall_freq_ranking"
    t.integer "fw_ranking_for_kanji_and_signs"
    t.string "the_former_jlpt_kanji_level"
    t.integer "specificity_level_in_humanities_and_arts_ha"
    t.integer "specificity_level_in_social_sciences_ss"
    t.integer "specificity_level_in_technological_natural_sciences_tn"
    t.integer "specificity_level_in_bio_medical_natural_sciences_bn"
    t.string "academic_kanji_and_limited_academic_domain_kanji"
    t.string "possible_literary_key_character"
    t.string "type_of_character"
    t.string "item"
    t.integer "frequency"
    t.float "standardized_freq_per_million_in_10_written_domains_fw"
    t.string "fw_cumulative_text_coverage"
    t.float "d"
    t.integer "d_ranking"
    t.float "uw_usage_coefficient_for_written_japanese"
    t.integer "range"
    t.float "lw_freq_per_million"
    t.integer "lw_freq_ranking"
    t.float "lp_freq_per_million"
    t.integer "lp_freq_ranking"
    t.float "he_freq_per_million"
    t.integer "he_freq_ranking"
    t.float "ah_freq_per_million"
    t.integer "ah_freq_ranking"
    t.float "pl_freq_per_million"
    t.integer "pl_freq_ranking"
    t.float "ec_freq_per_million"
    t.integer "ec_freq_ranking"
    t.float "se_freq_per_million"
    t.integer "se_freq_ranking"
    t.float "st_freq_per_million"
    t.integer "st_freq_ranking"
    t.float "bm_freq_per_million"
    t.integer "bm_freq_ranking"
    t.float "if_freq_per_million"
    t.integer "if_freq_ranking"
    t.integer "id_for_home_position"
    t.string "ranking_by_freq_in_category"
    t.integer "level_for_kanji_and_signs_for_international_students_i"
    t.integer "level_for_kanji_and_signs_for_general_learners_i"
    t.integer "level_for_kanji_and_signs_in_written_japanese_i"
    t.index ["item"], name: "index_tatsum_cdj_on_item", unique: true
  end

  create_table "tatsum_vdrj", force: :cascade do |t|
    t.string "word_level_for_international_students"
    t.integer "word_ranking_for_international_students"
    t.string "word_level_for_general_learners"
    t.integer "word_ranking_for_general_learners"
    t.string "word_level_for_written_japanese"
    t.string "u_ranking_for_written_japanese_excluding_assumed_known_words"
    t.integer "old_jlpt_level"
    t.integer "specificity_level_in_humanities_and_arts_ha"
    t.integer "specificity_level_in_social_sciences_ss"
    t.integer "specificity_level_in_technological_natural_sciences_ss"
    t.integer "specificity_level_in_bio_medical_natural_sciences_bn"
    t.string "possible_literary_keywords"
    t.string "word_tier_label"
    t.string "lexeme"
    t.string "standard_newspaper_orthography"
    t.string "standard_reading_katakana"
    t.string "part_of_speech"
    t.string "word_origin_type"
    t.string "magazine_forms"
    t.float "standardized_total_freq_per_million_in_10_written_domains_fw"
    t.float "d"
    t.integer "range"
    t.float "lw_freq_per_million"
    t.float "lp_freq_per_million"
    t.float "he_freq_per_million"
    t.float "ah_freq_per_million"
    t.float "pl_freq_per_million"
    t.float "ec_freq_per_million"
    t.float "se_freq_per_million"
    t.float "st_freq_per_million"
    t.float "bm_freq_per_million"
    t.float "oc_freq_per_million"
    t.integer "word_level_for_international_students_i"
    t.integer "word_level_for_general_learners_i"
    t.integer "word_level_for_written_japanese_i"
    t.index ["lexeme"], name: "index_vocabs_on_lexeme", unique: true
    t.index ["standard_newspaper_orthography"], name: "index_vocabs_on_standard_newspaper_orthography"
  end

end
