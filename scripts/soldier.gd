extends Unit


# Solider Base Class

#func _ready():
	#screen_size = get_viewport_rect().size
	#if(isEnemy):
		#direction = -1
	#else: 
		#direction = 1
		#
	#velocity = Vector2(200, 0) * direction
	#
#func _init():
	## Not sure what the diff between init and ready is yet
	#pass
#
#func _physics_process(delta: float): 
	#move_and_slide()
	#
#func _process(delta):
	## Main Loop (p much)
	#if health < 0:
		#die()
	#
	#
	#
#func die():
	#hide() # Disappears after dying
	#$CollisionShape2D.set_deferred("disabled", true) # Disable Collision hitbox
