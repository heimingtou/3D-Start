extends PlayerState

func _enter() -> void:
	#Change animation to run
	obj.change_animation("run")
	pass

func _update(delta: float):
	#Control jump
	if control_jump():
		return
	if not control_moving():
		change_state(fsm.states.idle)
	if not obj.is_on_floor():
		change_state(fsm.states.fall)
	#Control moving and if not moving change to idle
	
	#If not on floor change to fall
	
	pass
