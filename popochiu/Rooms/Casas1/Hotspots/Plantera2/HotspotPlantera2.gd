tool
extends PopochiuHotspot
# You can use E.run([]) to trigger a sequence of events.
# Use yield(E.run([]), 'completed') if you want to pause the excecution of
# the function until the sequence of events finishes.


# ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ VIRTUAL ░░░░
# When the node is clicked
func on_interact() -> void:
 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: A ver...",
		"Player: Si... ¿Una tarjeta SUBE nacional?",
		"Player: Ugh, qué asco, está muy pegajosa, como si tuviera algún tipo de pegamento.",
		"Player: No me servirá de mucho aquí, pero bueno, me la llevo.",
		I.add_item('TarjetaSUBE')
	])

	

# When the node is right clicked
func on_look() -> void:
	 E.run([
		C.walk_to_clicked(),
		C.face_clicked(),
		"Player: Parece haber algo en medio de las plantas.",
		
	])



# When the node is clicked and there is an inventory item selected
func on_item_used(item: PopochiuInventoryItem) -> void:
	# Replace the call to .on_item_used(item) to implement your code. This only
	# makes the default behavior to happen.
	# For example you can make the PC react on using some items in this Hotspot
#	if item.script_name == 'Key':
#		E.run(['Player: No can do'])
	.on_item_used(item)
