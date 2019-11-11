# Movement-8-Way.gd
#
# Description:
# This code will move 2D nodes in eight different directions while also
# rotating the node toward the position that it is moving to. Games that
# could use this code would be like an old-school arcade Gauntlet-style
# game.

extends Node2D

export (int) var speed = 150

var direction = Vector2()
var new_rotation = Vector2()

func _process(delta):
	var new_rotation = Vector2.ZERO
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		new_rotation += Vector2.UP
		direction += Vector2.UP

	if Input.is_action_pressed("ui_down"):
		new_rotation += Vector2.DOWN
		direction += Vector2.DOWN
		
	if Input.is_action_pressed("ui_left"):
		new_rotation += Vector2.LEFT
		direction += Vector2.LEFT

	if Input.is_action_pressed("ui_right"):
		new_rotation += Vector2.RIGHT
		direction += Vector2.RIGHT
		
	if new_rotation != Vector2.ZERO:
		rotation = new_rotation.angle() + deg2rad(90)
	position += direction.normalized() * speed * delta