extends Node3D

@onready var rigid_body_3d: RigidBody3D = $RigidBody3D

func spawn_bean():
	var clone = rigid_body_3d.duplicate(7) as RigidBody3D
	clone.freeze = false
	add_child(clone)
	clone.global_position = rigid_body_3d.global_position
	await get_tree().create_timer(4).timeout
	clone.freeze = true

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		spawn_bean()
