extends Unit

# Melee Soldier Base Class

#@export var hp_export : int = 20

@export var attack_damage_export : int = 10 # damage per attack
@export var attack_range_export : int = 10
@export var attack_speed_export : int = 10 # ticks per attack
#@export var unit_speed : int  = 20 # 20-50 seems decent
enum unit_type {MELEE,RANGED,SPECIAL}

#var soldier_attack = new Attack(attack_damage_export,attack_range_export,attack_speed_export)  # Declare soldier_attack as a member variable
func get_attack(attack_type):
	unit_type.MELEE
		
#var soldier_attack = Attack.new()
func _init(attack=Attack.new(),hp_value=10):
	super(attack,hp_value)
	#self.soldier_attack = Attack.new(attack_damage,attack_range,attack_speed)  # Initialize the member variable
#var range_attack = Attack.new(10,10,10)
#var melee_soldier = Soldier.new(health=10,range_attack)
