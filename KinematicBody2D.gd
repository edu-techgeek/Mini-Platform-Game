extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -600
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	else:
		motion.x = 0
	motion.y += GRAVITY
	if is_on_floor():
		print(motion)
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT 	
	motion = move_and_slide(motion, UP)
	
