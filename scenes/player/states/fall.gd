extends PlayerState

func _enter() -> void:
	#Change animation to fall
	obj.change_animation("fall")
	pass

func _update(_delta: float) -> void:
	#Control moving
	var is_moving: bool =control_moving()
	control_jump()
	if obj.is_on_floor():
		if not is_moving and not control_jump():
			change_state(fsm.states.idle)
	#If on floor change to idle if not moving and not jumping

	pass
