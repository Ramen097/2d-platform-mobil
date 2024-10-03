extends RigidBody2D  # or KinematicBody2D

@onready var sprite = get_node("../AX")  # Reference to the axe sprite
@onready var player = get_node("../Payer")  # Path to the player node

func _ready():
	# Optional: Start rotating the axe
	set_process(true)

func _physics_process(_delta: float) -> void:
	# Rotate the axe continuously
	rotation += 10.0 * _delta  # Adjust the rotation speed as needed

func _on_Axe_body_entered(body):
	# Check if the colliding body is the player
	if body == player:  # You can also use is_in_group("players") if the player is in a group
		# Change the color of the axe
		sprite.modulate = Color(1, 0, 0)  # Change to red on collision
