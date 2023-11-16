class_name CellType
enum {
	DIRT,
	WATER,
	SEED,
	BRANCH,
	ROOT,
	EMPTY
}

static func map_cell_type(v_origin : Vector2):
	var type = v_origin.x
	
	if type == -1:
		return EMPTY
	
	if type == 0:
		return WATER
	
	if type == 2:
		return DIRT
