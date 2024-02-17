extends Node

var Score = 0
var Scene = 1
var High_score = 0

func _ready():
	load_game()

func _physics_process(delta):
	if Score > High_score:
		High_score = Score

func _process(delta):
	save_game()

func save():
	var save_dict = {
		"High_score": High_score
	}
	return save_dict

func save_game():
	var save_game = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	if save_game:
		var json_string = JSON.stringify(save())
		save_game.store_line(json_string)
		save_game.close()

func load_game():
	if not FileAccess.file_exists("user://savegame.save"):
		return

	var save_game = FileAccess.open("user://savegame.save", FileAccess.READ)
	if save_game:
		var json_string = save_game.get_as_text()
		save_game.close()

		if json_string:
			var json = JSON.new()
			var parse_result = json.parse(json_string)
			
			if parse_result == OK:
				var loaded_data = json.get_data()
				if "High_score" in loaded_data:
					High_score = loaded_data["High_score"]
