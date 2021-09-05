extends Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	$label_buzz.visible=false
	self.autostart = false
	self.wait_time = 1
	connect("timeout", self, "enable_label")
	start()

func enable_label():
	$label_buzz.visible=true
