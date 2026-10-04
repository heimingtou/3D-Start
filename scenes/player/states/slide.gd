extends PlayerState



func _enter() -> void:
	#Change animation to fall
	obj.change_animation("slide")
	print("truot xuong")
	obj.velocity.y=0
	pass

func _update(_delta: float) -> void:
	#Control moving
	var is_moving: bool =control_moving()
	# 1. Kiểm tra nếu rời tường thì về trạng thái rơi
	if not obj.is_on_wall():
		change_state(fsm.states.fall)
		return
	if obj.is_on_floor():
		if not is_moving and not control_jump():
			change_state(fsm.states.idle)
	obj.velocity.y-=obj.gravity*_delta
	obj.velocity.y = max(obj.velocity.y, obj.max_slide_speed)
	# 2. Xử lý vận tốc Y khi bám tường
	
		# Khi đang đứng yên hoặc đang rơi xuống, áp dụng trọng lực trượt
		
		# Không cho rơi quá tốc độ trượt tối đa
	
	#If on floor change to idle if not moving and not jumping
	pass
