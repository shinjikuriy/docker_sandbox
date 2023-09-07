SELECT
  mifune_kanjidict.id AS id,
  mifune_kanjidict.kanji AS kanji,
  joyos.kanji_alt AS kanji_alt,
  mifune_kanjidict.radical AS radical,
  mifune_kanjidict.radvar AS radvar,
  mifune_kanjidict.phonetic AS phonetic,
  mifune_kanjidict.classification AS classification,
  mifune_kanjidict.reg_on AS reg_on,
  mifune_kanjidict.reg_kun AS reg_kun,
  mifune_kanjidict.onyomi AS onyomi,
  mifune_kanjidict.kunyomi AS kunyomi,
  mifune_kanjidict.jlpt AS jlpt,
  mifune_kanjidict.compact_meaning AS meaning,
  joyos.grade AS grade

  FROM mifune_kanjidict
    LEFT OUTER JOIN joyos ON mifune_kanjidict.kanji = joyos.kanji