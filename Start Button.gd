extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var next_scene: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_Button_pressed():
	get_tree().change_scene("res://Level_1.tscn") #pass # Replace with function body.
