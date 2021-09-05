extends Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	$label_dragon.visible=false
	$"dragon-wings-background".visible=false
	self.autostart = false
	self.wait_time = 1.5
	connect("timeout", self, "enable_label")
	start()

func enable_label():
	$label_dragon.visible=true
	$"dragon-wings-background".visible=true
