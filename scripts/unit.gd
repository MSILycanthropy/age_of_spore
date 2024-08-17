extends CharacterBody2D

@export var isEnemy : bool

var direction = 1
var health 
var attack_damage = 1
# Perhaps Soldier type will be decided upon instancing
enum SOLDIER_TYPE {MELEE,RANGED,SPECIAL}
var attack_range
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	if(isEnemy):
		direction = -1
	else: 
		direction = 1
		
	velocity = Vector2(200, 0) * direction
	
func _init():
	# Not sure what the diff between init and ready is yet
	pass

func _physics_process(delta: float): 
	move_and_slide()
	
func _process(delta):
	# Main Loop (p much)
	if health < 0:
		die()
	
	
	
func die():
	hide() # Disappears after dying
	$CollisionShape2D.set_deferred("disabled", true) # Disable Collision hitbox
