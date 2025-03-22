extends CharacterBody2D
class_name generic_agent

# generic agent attributes as required
@export var speed: int = 1
@export var strength: int = 1

# other helpful generic agent attributes
@export var is_red: bool = true
@export var time_delay: int = 0

# technically could use Vector2, but this forces integer values
@export var location_x: int = 0
@export var location_y: int = 0

# abstract functions are not supported by GDscript
# override this in oter agents
func tick():
	printerr("UNIMPLEMENTED!!!!")
	pass

# helpful generic functions
func same_team(other_agent: generic_agent):
	return self.is_red == other_agent.is_red

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
