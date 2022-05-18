extends Node2D


var enemy = preload("res://variant/enemy-mage.tscn")
onready var spawnTimer := $Timer
var nextSpawnTime := 7.0


# Called when the node enters the scene tree for the first time.
func _ready():
	spawnTimer.start(nextSpawnTime)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	#Spawn an enemy
	var enemySpawned = enemy.instance()
	enemySpawned.position = Vector2(position.x, position.y)
	get_tree().current_scene.add_child(enemySpawned)
	#Restart the timer
	spawnTimer.start(nextSpawnTime) 
