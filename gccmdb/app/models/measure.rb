class Measure < ApplicationRecord
  belongs_to :country
  belongs_to :data_source
end
