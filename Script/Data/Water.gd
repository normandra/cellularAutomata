class_name Water
extends BaseCell

static func update(tile_map : TileMap, position : Vector2):
	
	var a_title = tile_map.get_cell_alternative_tile(0, position)
	
	var bottom = position + Vector2(0,1)
	if CellType.EMPTY == Util.get_tile_at(tile_map, bottom):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, bottom, 0, Vector2(ATLAS_MAP.get("WATER"), 0), 0)
		return
	
	var bottom_left = position + Vector2(-1,1)
	if CellType.EMPTY == Util.get_tile_at(tile_map, bottom_left):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, bottom_left, 0, Vector2(ATLAS_MAP.get("WATER"), 0), 0)
		return

	var bottom_right = position + Vector2(1,1)
	if CellType.EMPTY == Util.get_tile_at(tile_map, bottom_right):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, bottom_right, 0, Vector2(ATLAS_MAP.get("WATER"), 0), 0)
		return
		
	var left = position + Vector2(-1,0)
	if CellType.EMPTY == Util.get_tile_at(tile_map, left):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, left, 0, Vector2(ATLAS_MAP.get("WATER"), 0), 0)
		return
		
	var right = position + Vector2(1,0)
	if CellType.EMPTY == Util.get_tile_at(tile_map, right):
		tile_map.erase_cell(0, position)
		tile_map.set_cell(0, right, 0, Vector2(ATLAS_MAP.get("WATER"), 0), 0)
		return
