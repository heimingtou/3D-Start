extends PlayerState

var coyote_time=0.1

func _enter() -> void:
	#Change animation to fall
	coyote_time=0.1
	obj.change_animation("fall")
	pass

func _update(_delta: float) -> void:
	coyote_time-=_delta
	#Control moving
	var is_moving: bool =control_moving()
	if coyote_time>0:
		print("roi khi chua vuot time")
		control_jump()
	if obj.is_on_floor():
		if not is_moving and not control_jump():
			change_state(fsm.states.idle)
	#If on floor change to idle if not moving and not jumping

	pass
