class AppdataRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: {writing: :appdata, reading: :appdata}
end