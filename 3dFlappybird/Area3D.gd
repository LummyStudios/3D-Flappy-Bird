extends Area3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const GRAVITY = 9.8

var canHandleCollisions = false
var isOnFloor = false
var velocity = Vector3(0, 0, 0)

p
