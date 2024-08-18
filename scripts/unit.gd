class_name Unit
extends RigidBody2D
signal contact

@export var isEnemy : bool
@export var unitSpeed: int = 20 # Between 10-50 ish imo

var direction = 1
var health 
var screen_size
@export var id:int

func _ready():
	screen_size = get_viewport_rect().size
	if(isEnemy):
		direction = -1
	else: 
		direction = 1
	contact_monitor = true
	max_contacts_reported = 5
	set_axis_velocity(Vector2(20,0)*direction)


func _init():
	pass

func die():
	hide() # Disappears after dying
	$CollisionShape2D.set_deferred("disabled", true) # Disable Collision hitbox
	
	

# Collision setup
# 1. Create Area2d with collision shape rectangle slightly bigger than CollisionShape2d
# 2. Click Area2d -> Node on top right -> area_entered Signal
# 3. Set Receiver method to area_entered
	
	#$CollisionShape2D.set_deferred("disabled", true) # Disable Collision hitbox

func start_attack():
	pass
	

	
