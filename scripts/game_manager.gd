extends Node2D

@export var cell_stage: Node2D
@export var human_stage: Node2D
@export var space_stage: Node2D
@export var soldier_scene: PackedScene
@export var base_ui: Control
var currency = 0

var game_timer = Timer.new()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cell_stage.visible = true
	human_stage.visible = false
	space_stage.visible = false
	$Timer.start()


func _on_timer_timeout() -> void:
	currency+=1
	var currency_label = get_tree().root.get_node("Base/BaseUI/Currency/CurrencyLabel")
	currency_label.text = str(currency)

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


func get_stage(stageName):
	if stageName == "cell":
		cell_stage.visible = true
		human_stage.visible = false
		space_stage.visible = false
	elif stageName == "human":
		cell_stage.visible = false
		human_stage.visible = true
		space_stage.visible = false
	elif stageName == "planet":
		cell_stage.visible = false
		human_stage.visible = false
		space_stage.visible = true


func _on_base_ui_change_stage(stageName: Variant) -> void:
	get_stage(stageName)

func _on_soldier_contact():
	print("SOLDIERS CONTACTED")
	pass # Replace with function body.
