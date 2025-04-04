extends CharacterBody2D
class_name generic_agent

# Allows for easy referencing later
enum agent_type { HUNTER, RUNNER, SLEEPER }
@export var type : agent_type

# generic agent attributes as required
@export var speed: int = 1
@export var strength: int = 1

# other helpful generic agent attributes
@export var time_delay: int = 0

# abstract functions are not supported by GDscript

# helpful generic functions
func same_team(other_agent: generic_agent):
	return self.is_red == other_agent.is_red

func release_agent():
	pass

# setter and getters
# technically able to be bypassed but include error checking

func set_speed(new_speed: int):
	if new_speed + strength <= 10:
		speed = new_speed

func get_speed():
	return speed

func set_strength(new_strength: int):
	if new_strength + speed <= 10:
		strength = new_strength

func get_strength():

	return strength
