extends BaseCharacter


const SPEED = 5.0
const JUMP_VELOCITY = 4.5
func _ready() -> void:
	fsm=FSM.new(self,$State, $State/Idle,true)
	super._ready()
