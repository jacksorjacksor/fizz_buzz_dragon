extends Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	$label_fizz.visible=false
	self.autostart = false
	self.wait_time = 0
	connect("timeout", self, "enable_label")

func enable_label():
	$label_fizz.visible=true
