extends Node2D

@export var cell_stage: Node2D
@export var human_stage: Node2D
@export var space_stage: Node2D
@export var soldier_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cell_stage.visible = true
	human_stage.visible = false
	space_stage.visible = false

func _unhandled_input(event):
	if event.is_action_pressed("zoom_in"):
		go_up()
	elif event.is_action_pressed("zoom_out"):
		go_down()

func go_up():
	if cell_stage.visible:
		cell_stage.visible = false
		human_stage.visible = true
		space_stage.visible = false
	else:
		cell_stage.visible = false
		human_stage.visible = false
		space_stage.visible = true
		
	
func go_down():
	if space_stage.visible:
		cell_stage.visible = false
		human_stage.visible = true
		space_stage.visible = false
	else:
		cell_stage.visible = true
		human_stage.visible = false
		space_stage.visible = false


func _on_soldier_contact():
	print("SOLDIERS CONTACTED")
	pass # Replace with function body.
