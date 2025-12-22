extends StaticBody2D

var has_mouse = false
var speed = 600


func _process(delta):
	if Input.is_action_pressed("Left"):
		_move_left(delta)
	if Input.is_action_pressed("Right"):
		_move_right(delta)
	if has_mouse and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		position.x = get_global_mouse_position().x - 39


func _move_left(delta):
	position.x -= speed * delta
	
	if position.x < 15:
		position.x = 15


func _move_right(delta):
	position.x += speed * delta
	
	if position.x > 1042:
		position.x = 1042


func _on_mouse_entered() -> void:
	has_mouse = true


func _on_mouse_exited() -> void:
	has_mouse = false
