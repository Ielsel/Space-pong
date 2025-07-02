extends Node2D

@onready var ball = $Ball
@onready var label_pongs = $Pongs
@onready var label_tutorial = $Tutorial
@onready var positions = $Positions
var last_position
var asteroid_scene = preload("res://scripts/asteroid.gd")

func _process(delta: float) -> void:
	if ball.started:
		label_pongs.visible = true
		label_tutorial.visible = false
	label_pongs.text = str(ball.pongs)

func _on_hole_body_entered(body: Node2D) -> void:
	call_deferred('reload_scene')

func reload_scene():
	get_tree().reload_current_scene()


func _on_timer_spawner_timeout() -> void:
	spawn_asteroid()

func spawn_asteroid():
	pass
