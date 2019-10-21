extends Area2D

const tile_size = 64
const directions = {
	"right": Vector2.RIGHT,
	"down": Vector2.DOWN,
	"left": Vector2.LEFT,
	"up": Vector2.UP
	}

func _ready():
	# Snap the player to grid
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _process(delta):
	pass

func move(dir):
	# If a direction name is given, convert to Vector2 using directions Dictionnary
	if typeof(dir) == TYPE_STRING:
		dir = directions.dir
	position += dir * tile_size
	
	#kzheguheizghfoiezhgfhezh
	#kjzgyhoizhegihezgoiezhg

func lol():
	pass