extends "res://nodes/GridElement.gd"

onready var Grid = get_parent()

func _ready():
	pass

func _process(delta):
	var input_direction = get_input_direction()
	if not input_direction:
		return

	var target_position = Grid.request_move(self, input_direction)
	if target_position:
		move_to(target_position)
	else:
		bump()

func get_input_direction():
	return Vector2(
		int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")),
		int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	)

func move_to(target_position):
	set_process(false)
	$Anim.play("walk")

	# Move the node to the target cell instantly,
	# and animate the sprite moving from the start to the target cell
	var move_direction = (target_position - position).normalized()
	$Tween.interpolate_property($Pivot, "position", - move_direction * 32, Vector2(), $Anim.current_animation_length, Tween.TRANS_LINEAR, Tween.EASE_IN)
	position = target_position

	$Tween.start()

	# Stop the function execution until the animation finished
	yield($Anim, "animation_finished")
	
	set_process(true)


func bump():
	set_process(false)
	$Anim.play("bump")
	yield($Anim, "animation_finished")
	set_process(true)