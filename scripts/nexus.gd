extends Node2D

func _init():
	SignalBus.connect("spawn_guy", _on_menu_button_pressed)

func _on_menu_button_pressed():
	print("SPAWN GUY")
