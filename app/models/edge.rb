class Edge < ActiveRecord::Base
  belongs_to :map
  belongs_to :source, class_name: "Point"
  belongs_to :target, class_name: "Point"

  validate :uniqueness_of_source_and_target
  validates :source_id, :target_id, presence: true

  def uniqueness_of_source_and_target
    self.errors.add :source, "Cannot be the same as target" if source == target
  end
end
