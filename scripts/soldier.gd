#@export var hp_export : int = 20
extends Unit

@export var attack_damage_export : int = 10 # damage per attack
@export var attack_range_export : int = 10
@export var attack_speed_export : int = 10 # ticks per attack
#@export var unit_speed : int  = 20 # 20-50 seems decent



func _init(attack=Attack.new(),hp_value=10):
	super(attack, hp_value)
