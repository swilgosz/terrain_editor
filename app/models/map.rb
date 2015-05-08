class Map < ActiveRecord::Base
  belongs_to :user

  has_many :points
  has_many :edges

  validates :name, presence: true

  def simplified_edges
    point_list = points.pluck(:id).sort
    edges.select(:source_id, :target_id).reduce([]) { |r, edge| r << [point_list.index(edge.source_id), point_list.index(edge.target_id) ] }
  end
end
