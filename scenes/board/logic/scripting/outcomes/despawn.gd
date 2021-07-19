extends "res://scenes/board/logic/scripting/outcomes/base_outcome.gd"

var who

func _execute(_metadata):
    var tile = self.board.map.model.get_tile(self.who)
    if tile.unit.is_present():
        tile.unit.clear()
        self.board.smoke_a_tile(tile)

func _ingest_details(details):
    self.who = Vector2(details['who'][0], details['who'][1])
