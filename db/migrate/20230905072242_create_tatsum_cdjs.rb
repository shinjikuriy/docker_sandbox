class CreateTatsumCdjs < ActiveRecord::Migration[7.0]
  def change
    create_table :tatsum_cdj do |t|
      t.string :level_for_kanji_and_signs_for_international_students
      t.integer :ranking_for_kanji_and_signs_for_international_students
      t.string :level_for_kanji_and_signs_for_general_learners
      t.integer :ranking_for_kanji_and_signs_for_general_learners
      t.string :level_for_kanji_and_signs_in_written_japanese
      t.integer :u_ranking_for_kanji_and_signs_in_written_japanese
      t.integer :overall_freq_ranking
      t.integer :fw_ranking_for_kanji_and_signs
      t.string :the_former_jlpt_kanji_level
      t.integer :specificity_level_in_humanities_and_arts_ha
      t.integer :specificity_level_in_social_sciences_ss
      t.integer :specificity_level_in_technological_natural_sciences_tn
      t.integer :specificity_level_in_bio_medical_natural_sciences_bn
      t.string :academic_kanji_and_limited_academic_domain_kanji
      t.string :possible_literary_key_character
      t.string :type_of_character
      t.string :item
      t.integer :frequency
      t.float :standardized_freq_per_million_in_10_written_domains_fw
      t.string :fw_cumulative_text_coverage
      t.float :d
      t.integer :d_ranking
      t.float :uw_usage_coefficient_for_written_japanese
      t.integer :range
      t.float :lw_freq_per_million
      t.integer :lw_freq_ranking
      t.float :lp_freq_per_million
      t.integer :lp_freq_ranking
      t.float :he_freq_per_million
      t.integer :he_freq_ranking
      t.float :ah_freq_per_million
      t.integer :ah_freq_ranking
      t.float :pl_freq_per_million
      t.integer :pl_freq_ranking
      t.float :ec_freq_per_million
      t.integer :ec_freq_ranking
      t.float :se_freq_per_million
      t.integer :se_freq_ranking
      t.float :st_freq_per_million
      t.integer :st_freq_ranking
      t.float :bm_freq_per_million
      t.integer :bm_freq_ranking
      t.float :if_freq_per_million
      t.integer :if_freq_ranking
      t.integer :id_for_home_position
      t.string :ranking_by_freq_in_category
      t.integer :level_for_kanji_and_signs_for_international_students_i
      t.integer :level_for_kanji_and_signs_for_general_learners_i
      t.integer :level_for_kanji_and_signs_in_written_japanese_i
      t.index(:item, unique: true)
    end
  end
end
