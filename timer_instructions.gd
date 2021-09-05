extends Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	$button_enter.visible=false
	self.autostart = false
	self.wait_time = 1.5
	connect("timeout", self, "enable_label")
	start()

func enable_label():
	$button_enter.visible=true
