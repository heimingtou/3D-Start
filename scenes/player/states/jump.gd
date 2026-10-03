extends PlayerState

func _enter() -> void:
	#Change animation to jump
	obj.change_animation("jump")
	pass

func _update(_delta: float):
	#Control moving
	if obj._reset:
		control_jump()
	control_moving()
	if obj.velocity.y<0: 
		change_state(fsm.states.fall)
	#If velocity.y is less than 0 change to fall
	
	pass
