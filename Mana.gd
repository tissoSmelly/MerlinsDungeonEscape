extends Area2D

onready var anim_mana: AnimationPlayer = get_node("AnimationPlayer")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var consumed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_body_entered(body):
	anim_mana.play("Spin-Fade")
	yield(anim_mana, "animation_finished")
	queue_free()
