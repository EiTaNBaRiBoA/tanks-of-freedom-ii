extends "res://scenes/board/logic/scripting/outcomes/base_outcome.gd"

var side
var suspended

func _execute(_metadata):
    var hero = self.board.state.get_hero_for_side(self.side)

    if hero != null:
        if self.suspended:
            hero.disable_abilities()
        else:
            hero.enable_abilities()

func _ingest_details(details):
    self.side = details['side']
    self.suspended = details['suspended']
