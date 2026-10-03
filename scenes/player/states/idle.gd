extends PlayerState

func _enter() -> void:
	obj.change_animation("idle")
	obj._reset=false
	obj._multi=1
	

func _update(_delta: float) -> void:
	#Control jump
	control_jump()
	#Control moving
	control_moving()
	#If not on floor change to fall
	if not obj.is_on_floor():
		change_state(fsm.states.fall)
