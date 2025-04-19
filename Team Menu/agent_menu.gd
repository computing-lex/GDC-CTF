extends Node
class_name agent_menu

@export var nameControl: TextEdit
@export var typeControl: OptionButton
@export var movementControl: OptionButton
@export var speedControl: Slider
@export var delayControl: Slider

func get_agent_name() -> String:
	return nameControl.text

func get_agent_type():
	var selected = typeControl.selected
	return [selected, typeControl.get_item_text(selected)]

func get_agent_movement():
	var selected = movementControl.selected
	return [selected, movementControl.get_item_text(selected)]

func get_agent_speed() -> float:
	return speedControl.value

func get_agent_strength() -> float:
	return speedControl.max_value + speedControl.min_value - speedControl.value

func get_agent_delay() -> float:
	return delayControl.value

func export() -> Dictionary:
	return {
		"name": get_agent_name(),
		"type": get_agent_type(),
		"movement": get_agent_movement(),
		"speed": get_agent_speed(),
		"strength": get_agent_strength(),
		"delay": get_agent_delay(),
		}
