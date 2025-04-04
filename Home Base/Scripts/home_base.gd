extends Node2D
signal flag_captured

@export var is_red := true
@export var team : Array[generic_agent]

@export var release_timer : Timer


func _process(delta: float) -> void:
	pass

func initalize_teams():
	pass

func deploy_team():
	for agent in team:
		if agent.time_delay >= release_timer.wait_time:
			agent.release_agent()
			print("Agent releaseed!")

func on_flag_captured():
	flag_captured.emit()
