extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var noiseimage
var testbmp

# Called when the node enters the scene tree for the first time.
func _ready():
	var texttestbmp = preload("res://testbmp.png")
	testbmp = texttestbmp.get_data()
	print(testbmp)
	
	var texture = preload("res://noisetexture.tres")
	yield(texture, "changed")
	noiseimage = texture.get_data()
	print(noiseimage)
	
	print("update")
	update()
	

func _draw():
	if(noiseimage):
		print("draw noise")
		#draw_texture(noiseimage, Vector2(0,0), Color(1,0,0,1))
		draw_texture_rect(noiseimage, Rect2(0,0,64,64), false)
		draw_texture_rect(testbmp, Rect2(0,64,64,128), false)
	draw_circle(Vector2(128,128), 10, Color(1, 0, 0))
	draw_circle(Vector2(128+16,128+16), 10, Color(1, 0, 0))



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
