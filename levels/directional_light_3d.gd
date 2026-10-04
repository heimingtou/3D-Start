extends DirectionalLight3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fade_light(Color.WHITE, Color.BLACK, 60.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
var rotation_speed: float = deg_to_rad(360.0 / 60.0)

func _process(delta: float) -> void:
	rotate_y(rotation_speed * delta)
	
func fade_light(from_color: Color, to_color: Color, duration: float) -> void:
	var tween = create_tween()
	
	
	tween.tween_property(self, "light_color", to_color, duration)
	

	tween.finished.connect(func():
		fade_light(to_color, from_color, duration)
	)
