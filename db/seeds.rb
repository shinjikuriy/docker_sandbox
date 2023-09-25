require 'csv'

CSV.foreach(Rails.root.join('db/db_formatted/joyokanji_mod.tsv'), headers: true, col_sep: "\t") do |row|
  row['grapheme_olds'] = row['grapheme_olds']&.split(',')
  row['radicals'] = row['radicals']&.split(',')
  row['onyomis'] = row['onyomis']&.split(',')
  row['kunyomis'] = row['kunyomis']&.split(',')
  Joyokanji.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/db_formatted/mifune_kanjidict_mod.tsv'), headers: true, col_sep: "\t") do |row|
  row['joyo_onyomis'] = row['joyo_onyomis']&.split(',')
  row['joyo_kunyomis'] = row['joyo_kunyomis']&.split(',')
  row['onyomis'] = row['onyomis']&.split(',')
  row['kunyomis'] = row['kunyomis']&.split(',')
  row['nanoris'] = row['nanoris']&.split(',')
  row['meanings'] = row['meanings']&.split(',')
  row['compact_meanings'] = row['compact_meanings']&.split(',')
  MifuneKanjidict.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/db_formatted/tatsum_cdj_kanji_signs_mod.tsv'), headers: true, col_sep: "\t") do |row|
  TatsumCdj.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/db_formatted/tatsum_vdrj_mod.tsv'), headers: true, col_sep: "\t", liberal_parsing: true) do |row|
  row['possible_literary_keywords'] = false if row['possible_literary_keywords'] == 'false'
  TatsumVdrj.create_or_find_by(row.to_h)
end
