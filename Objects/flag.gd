extends Area2D

@export var is_red : bool
@onready var sprite := $FlagSprite

func _ready() -> void:
	var team_color = Vector4(0,0,0,1)
	
	if is_red:
		team_color = Vector4(1,0,0,1)
		print("colored red!")
	else:
		team_color = Vector4(0,0,1,1)
	
	sprite.get_material().set_shader_parameter("team_color", team_color)
