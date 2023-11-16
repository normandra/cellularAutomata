class_name Dirt
extends BaseCell

static func update(tile_map : TileMap, position : Vector2):
	
	var bottom = position + Vector2(0,1)
	if CellType.EMPTY == Util.get_tile_at(tile_map, bottom) or CellType.WATER == Util.get_tile_at(tile_map, bottom):
		if CellType.EMPTY == Util.get_tile_at(tile_map, bottom):
			tile_map.erase_cell(0, position)
		else:
			tile_map.set_cell(0, position, 0, tile_map.get_cell_atlas_coords(0, bottom, false), 0)	
		tile_map.set_cell(0, bottom, 0, Vector2(ATLAS_MAP.get("DIRT"), 0), 0)
		return
	
	var bottom_left = position + Vector2(-1,1)
	if CellType.EMPTY == Util.get_tile_at(tile_map, bottom_left):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, bottom_left, 0, Vector2(ATLAS_MAP.get("DIRT"), 0), 0)
		return

	var bottom_right = position + Vector2(1,1)
	if CellType.EMPTY == Util.get_tile_at(tile_map, bottom_right):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, bottom_right, 0, Vector2(ATLAS_MAP.get("DIRT"), 0), 0)
		return
