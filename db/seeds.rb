require 'csv'

CSV.foreach(Rails.root.join('db/source/joyokanji.tsv'), headers: true, col_sep: "\t") do |row|
  row.delete 'number'
  row['onyomis'] = row['onyomis']&.split(',')
  row['kunyomis'] = row['kunyomis']&.split(',')
  Joyokanji.create_or_find_by(row.to_h)
end

headers = MifuneKanjidict.column_names.map(&:to_sym)
headers.delete(:id)
CSV.foreach(Rails.root.join('db/source/mifunetoshiro_kanjidict.txt'), col_sep: "\t") do |row|
  att = headers.zip(row).to_h
  att[:reg_on] = att[:reg_on]&.split('、')
  att[:reg_kun] = att[:kun]&.split('、')
  att[:onyomi] = att[:onyomi]&.split('、')
  att[:kunyomi] = att[:kunyomi]&.split('、')
  att[:nanori] = att[:nanori]&.split('、')
  att[:meaning] = att[:meaning]&.split(';')
  att[:compact_meaning] = att[:compact_meaning]&.split(';')
  MifuneKanjidict.create_or_find_by(att)
end

CSV.foreach(Rails.root.join('db/source/tatsum_cdj_kanji_and_signs.tsv'), headers: true, col_sep: "\t") do |row|
  TatsumCdj.create_or_find_by(row.to_h)
end

CSV.foreach(Rails.root.join('db/source/tatsum_vdrj.tsv'), headers: true, col_sep: "\t", liberal_parsing: true) do |row|
  TatsumVdrj.create_or_find_by(row.to_h)
end
