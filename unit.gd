extends CharacterBody2D

@export var isEnemy : bool

var direction = 1

func _ready():
	if(isEnemy):
		direction = -1
	else: 
		direction = 1
		
	velocity = Vector2(200, 0) * direction

func _physics_process(delta: float): 
	move_and_slide()
