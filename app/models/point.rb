class Point < ActiveRecord::Base
  belongs_to :map
  has_many :edges, as: :source, foreign_key: :source_id
  has_many :edges, as: :target, foreign_key: :target_id
end
