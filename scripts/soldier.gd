extends Unit

# Melee Soldier Base Class

@export var export_attack_range : int = 10
@export var export_attack_damage : int = 10 # damage per attack
@export var export_attack_speed : int = 10 # ticks per attack

class Attack extends RefCounted:
	var attack_damage : int

	func _init(export_attack_damage = 10):
		self.attack_damage = export_attack_damage


@export var unit_speed : int  = 20 # 20-50 seems decent

var soldier_attack  # Declare soldier_attack as a member variable

func _ready():
	screen_size = get_viewport_rect().size

func _init():
	super()
	if(isEnemy):
		direction = -1
	else: 
		direction = 1

	soldier_attack = Attack.new(export_attack_damage)  # Initialize the member variable

func area_entered(body):
	set_linear_velocity(Vector2(0,0))
	print("Collided")
	print(id)
	contact.emit()
	attack_enemy(body)

func attack_enemy(body):
	body.hp -= soldier_attack.attack_damage  # Access the member variable here
