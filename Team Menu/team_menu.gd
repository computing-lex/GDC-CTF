extends Node
class_name team_menu

@export var agent_menu_template: PackedScene = preload("res://Team Menu/agent_menu.tscn")
@export var container: BoxContainer
@export var amount: int = 7

var agent_menu_list: Array[agent_menu] = []

func _ready() -> void:
	var new_agent
	for i in amount:
		new_agent = agent_menu_template.instantiate()
		container.add_child(new_agent)
		agent_menu_list.append(new_agent)

func export() -> Array[Dictionary]:
	var result: Array[Dictionary] = []
	for agent: agent_menu in agent_menu_list:
		result.append(agent.export())
	return result


func _on_button_pressed() -> void:
	var data = export()
	print(data)
	
	# trigger scene change here
	print("*insert scene change here*")
