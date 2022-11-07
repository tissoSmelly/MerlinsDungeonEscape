extends Button

export var next_scene: PackedScene

func _get_configuration_warning():
	return "Error Message: Next Scene property is empty." if not next_scene else ""


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_Again_Button_pressed():
	get_tree().change_scene_to(next_scene)
