extends Node2D

@export var tile_map : TileMap
@export var world_size : int

func _input(event):
	if Input.is_action_pressed("left_mouse_pressed"):
		tile_map.set_cell(0, tile_map.local_to_map(get_global_mouse_position()), 0, Vector2(2,0), 0)

func _on_timer_timeout():
	tile_map.set_cell(0, Vector2(58,1), 0, Vector2(2,0), 0)
	tile_map.set_cell(0, Vector2(59,1), 0, Vector2(0,0), 0)
	update_world()

func update_world():
	for y in range(world_size, 0, -1):
		for x in range(world_size):
			var cur = Vector2(x,y)
			var type = Util.get_tile_at(tile_map, cur)
			match (type):
				CellType.DIRT:
					Dirt.update(tile_map,cur)
				CellType.WATER:
					Water.update(tile_map,cur)
