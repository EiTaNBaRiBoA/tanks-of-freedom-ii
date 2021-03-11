extends Spatial

onready var main = $"main"
onready var smoke = $"main/smoke"
onready var small_main = $"small_main"

func grab_sfx_effect(unit):
    var audio_player = unit.give_sfx_effect("die")
    audio_player.connect("finished", audio_player, "queue_free")
    $"audio".add_child(audio_player)
    audio_player.play()

func explode():
    self.smoke.set_emitting(true)
    self.main.set_emitting(true)

func explode_a_bit():
    self.small_main.set_emitting(true)

func puff_some_smoke():
    self.smoke.set_emitting(true)