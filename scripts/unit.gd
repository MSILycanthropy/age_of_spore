class_name Unit
extends RigidBody2D
signal contact

# Base class variables
@export var id:int
@export var isEnemy: bool
@export var unitSpeed: int = 20  # Between 10-50


var direction = 1
var hp
var attack
var attack_range
var screen_size



func _ready():
	screen_size = get_viewport_rect().size
	if(isEnemy):
		direction = -1
	else: 
		direction = 1
	set_axis_velocity(Vector2(40,0)*direction)
	contact_monitor = true
	max_contacts_reported = 5


func _init(attack=Attack.new(), hp=10):
	self.hp = hp
	self.attack = attack
	
	
func die():
	hide()  # Disappears after dying
	$CollisionShape2D.set_deferred("disabled", true)  # Disable Collision hitbox

enum unit_type {MELEE,RANGED,SPECIAL}

func get_attack(attack_type):
	unit_type.MELEE

func attack_enemy(body):
	print(body.hp)
	if (isEnemy != body.isEnemy):
		body.hp -= self.attack.attack_damage  # Access the member variable here
	print(body.hp)


func area_entered(body):
	set_linear_velocity(Vector2(0,0))
	print("Collided")
	contact.emit()
	attack_enemy(body.get_parent())


func start_attack():
	pass
	
