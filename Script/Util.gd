class_name Util
static func get_tile_at(tile_map : TileMap, pos : Vector2):
	var tile = tile_map.get_cell_atlas_coords(0, pos, false)
#	print(tile)
	return CellType.map_cell_type(tile)
