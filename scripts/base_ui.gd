extends Control

@export var CellButton: Button
@export var HumanButton: Button

signal change_stage(stageName)

func _on_cell_button_pressed() -> void:
	emit_signal("change_stage", "cell")


func _on_human_button_pressed() -> void:
	emit_signal("change_stage", "human")


func _on_planet_button_pressed() -> void:
	emit_signal("change_stage", "planet")
