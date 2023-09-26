require 'csv'

CSV.foreach(Rails.root.join('db/db_formatted/joyokanji_mod.tsv'), headers: true, col_sep: "\t") do |row|
  keys = %w[grapheme_olds radicals onyomis kunyomis]
  keys.each { |key| row[key] = row[key]&.split(',') }
  Joyokanji.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/db_formatted/mifune_kanjidict_mod.tsv'), headers: true, col_sep: "\t") do |row|
  keys = %w[joyo_onyomis joyo_kunyomis onyomis kunyomis nanoris meanings compact_meanings]
  keys.each { |key| row[key] = row[key]&.split(',') }
  MifuneKanjidict.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/db_formatted/tatsum_cdj_kanji_signs_mod.tsv'), headers: true, col_sep: "\t") do |row|
  TatsumCdj.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/db_formatted/tatsum_vdrj_mod.tsv'), headers: true, col_sep: "\t") do |row|
  row['possible_literary_keywords'] = false if row['possible_literary_keywords'] == 'false'
  TatsumVdrj.create_or_find_by(row.to_h)
end
