extends CharacterBody2D

@export var speed = 100
var ball

func _ready():
	ball = get_parent().get_node("Ball")

func _physics_process(delta: float) -> void:
	velocity.x = 0
	
	if ball.started == true:
		if Input.is_action_pressed("Left"):
			velocity.x -= speed
		if Input.is_action_pressed("Right"):
			velocity.x += speed
	move_and_collide(velocity * delta)
