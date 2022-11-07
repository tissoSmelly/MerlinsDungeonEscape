tool
extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer") ## or $AnimationPlayer

export var next_scene: PackedScene

var manaleft = 3

func _on_Exit_door_body_entered(body):
	if manaleft <= 0:
		teleport()
	else:
		return


func _get_configuration_warning():
	return "Error Message: Next Scene property is empty." if not next_scene else ""


func teleport():
	anim_player.play("Fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)



func _on_Mana_tree_exited():
	manaleft -= 1 # Replace with function body.


func _on_Mana3_tree_exited():
	manaleft -= 1 #pass # Replace with function body.


func _on_Mana2_tree_exited():
	manaleft -= 1#pass # Replace with function body.
