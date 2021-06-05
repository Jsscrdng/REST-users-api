class User < ApplicationRecord
  ## Classification comply with ISO/IEC 5218
  enum sex: { not_known: 0, male: 1, female: 2, not_applicable: 9 }

  validates_presence_of :full_name
end
