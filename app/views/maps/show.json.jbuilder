json.(@map, :id)
json.points do
  json.array! @map.points.order(:id), :id, :x, :y, :z
end
json.edges do
  json.array! @map.simplified_edges
end
