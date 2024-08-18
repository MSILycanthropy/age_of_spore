class_name Unit
extends RigidBody2D
signal contact


@export var isEnemy : bool


var direction = 1
var health 
var attack_damage = 1
# Perhaps Soldier type will be decided upon instancing
# enum SOLDIER_TYPE {MELEE,RANGED,SPECIAL}
var attack_range
var screen_size
@export var id:int

func _ready():
	screen_size = get_viewport_rect().size
	if(isEnemy):
		direction = -1
	else: 
		direction = 1
	set_axis_velocity(Vector2(20,0)*direction)
	contact_monitor = true
	max_contacts_reported = 5

func _init():
	# Not sure what the diff between init and ready is yet
	pass
	
	
func die():
	hide() # Disappears after dying
	$CollisionShape2D.set_deferred("disabled", true) # Disable Collision hitbox
	

# Collision setup
# 1. Create Area2d with collision shape rectangle slightly bigger than CollisionShape2d
# 2. Click Area2d -> Node on top right -> area_entered Signal
# 3. Set Receiver method to area_entered

func area_entered(body):
	set_linear_velocity(Vector2(0,0))
	print("Collided")
	print(id)
	contact.emit()
	start_attack()
	#$CollisionShape2D.set_deferred("disabled", true) # Disable Collision hitbox

func start_attack():
	pass
	

