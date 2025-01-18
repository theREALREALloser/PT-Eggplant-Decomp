{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_movingplatform",
  "spriteId": {
    "name": "spr_chigaco",
    "path": "sprites/spr_chigaco/spr_chigaco.yy",
  },
  "solid": false,
  "visible": true,
  "managed": false,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_platform",
    "path": "objects/obj_platform/obj_platform.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":1,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_moving_vstop","path":"objects/obj_moving_vstop/obj_moving_vstop.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_moving_hstop","path":"objects/obj_moving_hstop/obj_moving_hstop.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":4,"eventType":7,"collisionObjectId":null,},
  ],
  "properties": [],
  "overriddenProperties": [],
  "parent": {
    "name": "Other",
    "path": "folders/Objects/Other.yy",
  },
}