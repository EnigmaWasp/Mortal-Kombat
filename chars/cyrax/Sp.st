
;--------------------------------------------
; Torpedo
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1200
ctrl = 0

; Chest sound
[State 2000, sound]
type = Playsnd
trigger1 = animelem = 2
value = 14,0

;[State 2000, nonkilling helper]
;type = helper
;trigger1 = AnimElem = 2
;trigger1 = Var(9) = 1
;stateno = 2001
;name = "Bomb1"
;id = 2001
;pos = 0, -90
;postype = p1

[State 2000, killing helper]
type = helper
trigger1 = AnimElem = 2
;trigger1 = Var(9) = 0
stateno = 2002
name = "Bomb1"
id = 2001
pos = 0, -90
postype = p1

[State 2000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
; Bomb eject close
[Statedef 2010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1200
ctrl = 0

[State 2010, sound]
type = Playsnd
trigger1 = time = 0
value = 14,0


[State 2010, killing helper]
type = helper
trigger1 = AnimElem = 2
;trigger1 = Var(9) = 0
stateno = 2011
name = "Shot2"
id = 2001
pos = 0, -90
postype = p1

[State 2010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Far bomb (killer)
[Statedef 2001]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 10, 0
anim = 1010
ctrl = 0

[State 2001, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2020
name = "Killbomb"
id = 2020
pos = 0, 0
postype = p1

[State 2001, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2001, slow]
type = veladd
trigger1 = p2bodydist X < 70
x = -.1

[State 2001, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2001, slow]
type = veladd
trigger1 = p2bodydist X < 35
x = -.2

[State 2001, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 2001, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Far bomb (nonkiller)
[Statedef 2002]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 6, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 30
trigger2 = time = 40
value = 0,4

[State 2002, nonkilling helper]
type = helper
trigger1 = time = 119
stateno = 2021
name = "NoKillbomb"
id = 2021
pos = 0, 0
postype = p1

[State 2002, drop]
type = Veladd
trigger1 = time > 0
y = .2

;[State 2002, slow]
;type = veladd
;trigger1 = b2odydist X < 70
;x = -.1

;[State 2002, slow]
;type = veladd
;trigger1 = p2bodydist X < 35
;x = -.2

;[State 2002, stopx]
;type = velset
;trigger1 = p2dist X < 1
;x = 0

[State 2002, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 35
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 45
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 45
trigger3 = time = 55
Y = 3

[State 2002, gone]
type = Destroyself
trigger1 = time = 120

;-------------------------------------
; Close bomb (killer)
[Statedef 2011]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 3, 0
anim = 1010
ctrl = 0

[State 2000, soundss]
type = Playsnd
trigger1 = time = 20
trigger2 = time = 30
value = 0,4

[State 2011, killing helper]
type = helper
trigger1 = time = 129
stateno = 2020
name = "Killbomb"
id = 2020
pos = 0, 0
postype = p1

[State 2011, drop]
type = Veladd
trigger1 = time > 0
y = .4

;[State 2011, stopx]
;type = velset
;trigger1 = p2dist X < 1
;x = 0

[State 2011, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time > 20
trigger1 = time < 25
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 20
trigger1 = time < 35
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 35
trigger3 = time = 45
Y = 3


[State 2011, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Close bomb (nonkiller)
[Statedef 2012]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 4, 0
anim = 1010
ctrl = 0

[State 2012, nonkilling helper]
type = helper
trigger1 = time = 129
stateno = 2021
name = "NoKillbomb"
id = 2021
pos = 0, 0
postype = p1

[State 2012, drop]
type = Veladd
trigger1 = time > 0
y = .2

[State 2012, stopx]
type = velset
trigger1 = p2dist X < 1
x = 0

[State 2012, stop]
type = velset
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 35
Y = -5

[State 1005, VEL1]
type = posadd
trigger1 = time > 30
trigger1 = time < 45
X = 1.5

[State 1005, VEL2]
type = posadd
trigger1 = time = 35
;trigger2 = time = 45
trigger3 = time = 55
Y = 3

[State 2012, gone]
type = Destroyself
trigger1 = time = 130

;-------------------------------------
; Killer BOMB
[Statedef 2020]
type    = S
movetype= A
physics = N
poweradd= 120
juggle = 0
anim = 1011
ctrl = 0

[State 2020, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2020, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2020, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2life >= 90
attr = S, SP   
damage    = 80, 30
animtype = Heavy
guardflag = A
hitflag = MAF
priority = 7, Hit
pausetime = 0,0
sparkno = -1
;sparkxy = -10,-70
;hitsound = 2000,5
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 2.5, -12
air.velocity = -2.5,-10
air.fall = 1
fall = 1
fall.recover = 0
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 2020, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------
; NonKiller BOMB
[Statedef 2021]
type    = S
movetype= A
physics = N
poweradd= 120
juggle = 0
anim = 1011
ctrl = 0

[State 2021, snd]
type = playsnd
trigger1 = time = 0
value = 4,19

[State 2021, plume]
type = Explod
trigger1 = time = 0
anim = 1020;F20
pos = 0, 0
postype = p1
facing = 1
sprpriority = 3
ownpal = 0
ontop = 1

[State 2021, hit]
type = HitDef
trigger1 = time = 0
;trigger1 = p2life >= 90
;trigger1 = p2statetype != A
attr = S, SP   
damage    = 80, 30
animtype = Heavy
guardflag = A
hitflag = MAF
priority = 7, Hit
pausetime = 0,0
sparkno = -1
;sparkxy = -10,-70
;hitsound = 2000,5
guardsound = 5,14
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = 2.5, -12
air.velocity = -2.5,-10
air.fall = 1
fall = 1
fall.recover = 0
kill       = root, Var(9) = 0
fall.kill  = root, Var(9) = 0
guard.kill = root, Var(9) = 0

[State 2021, des]
type = destroyself
trigger1 = animtime = 0

;--------------------------------------------
;--------------------------------------------
;INVINCIBLE
[Statedef 3010]
type = S
movetype = I
physics = S
anim = 1015 + var(17)
ctrl = 0
velset = 0,0

[State 3010, Fire]
type = explod
trigger1 = Time = 1
anim = F11
ID = 9199
pos = 0,0
shadow = -1,250,250
postype = p1
ontop = 1

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 4, 18

[State 3010, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 1

[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;********** Reverse INVISIBILITY **********
[Statedef 3011]
type = S
movetype = I
physics = S
anim = 1016 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
trigger1 = stateno != 3010
anim = F11
shadow = -1,250,250
ID = 9199
pos = 0,0
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno != 3010
value = 4, 18

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; I hitum now fly.
[StateDef 1011]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 1010

[State 1010, HimHitWall]
type = TargetState
trigger1 = Time = 5
value = 1031
ctrl = 0

[State 1010, YouBounce]
type = ChangeState
trigger1 = Time = 5
value = 1001
ctrl = 0

;----------------------------------------------
; I hitum now he fly.
;----------------------------------------------
; Player Two hit the dirt.
[StateDef 1031]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .5

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110 ;Hit ground

;--------------------------------------------
; Air Torpedo
;--------------------------------------------
; Torpedo Bounce away
[StateDef 1101]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2.7,-10,0

[State 1101, 10]
type = ChangeAnim
trigger1 = Time = 0
value = 1001

;--------------------------------------------
; Torpedo Slide to a halt
[StateDef 1102]
type    = A
movetype= I
physics = A
ctrl = 0
anim = 1102

[State 1102, 10]
type = VelAdd
trigger1 = (Time < 6) && (Vel X > 0)
x = -2

[State 1102, 10]
type = PosAdd
trigger1 = AnimElem = 3
y = 33

;--------------------------------------------

;----------------------------------------------
; I hitum now fly.
[StateDef 1111]
type    = A
movetype= I
physics = A
ctrl = 0
velset = -2,-8
anim = 1045


[State 1001, 10]
type = VelAdd
trigger1 = Time = [0, 7]
x = -0.2

[State 1001, 10]
type = PosAdd
trigger1 = Time = 0
y = -45

[State 1200, at]
type = Explod
trigger1 = time = 0
anim = 1015
postype = p1
sprpriority  >= 2

[State 1200, 2at]
type = Explod
trigger1 = time = 0
anim = 1046
postype = p1
ID = 112
sprpriority  >= 2


[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 1
value = 4, 22
channel = 3

[State 1200, Zapp]
type = PlaySnd
trigger1 = time = 1
value = 2424, 0
channel = 3


[State 1200, BoltFat]
type = Projectile
trigger1 = time = 0
triggerall = p2stateno != 12001
triggerall = p2stateno != 1009
triggerall = prevstateno != 50
projanim = 1016
projhitanim = 1015
projremanim = 1015
offset = 0*const(size.xscale), 45
posset = 0,0
ID = 177
remvelocity = 0, 0
projremovetime = 200
projsprpriority = 1
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

hitflag = CMA
;guardflag = L
pausetime = 0,0
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
;guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat]
type = Projectile
trigger1 = time = 0
triggerall = p2stateno != 12001
triggerall = p2stateno != 1009
triggerall = prevstateno = 50
projanim = 1050
projhitanim = 1015
projremanim = 1015
offset = 0*const(size.xscale), 45
posset = 0,0
ID = 177
remvelocity = 0, 0
projsprpriority = 1
projremovetime = 200
; HitDef part of projectile info
attr = S, NT
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

hitflag = CMA
;guardflag = L
pausetime = 0,0
sparkno = -1
p2stateno = 12001
guard.sparkno = -1
hitsound   = s4,17
;guardsound = s4,17
ground.type = High
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

;[State 1200, 10]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 1100
;CTRL = 1

;============================================================


[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1000, sound]
type = Playsnd
trigger1 = Animelem = 1
value = 14, 0

[State 1000, ssound]
type = Playsnd
trigger1 = time = 20
value = 4, 4

[State 1000, 1]
type = Helper
trigger1 = animelem = 2
stateno = 1010
name = "net"
id = 1010
postype = p1
pos = 25, -95
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

[State 1000, 7]
type = ChangeState
;triggerall = Time >= 100
;trigger1 = p2stateno != 1020
;trigger1 = p2stateno != 1021
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1000, 8]
type = Changestate
trigger1 = p2stateno = 1020
;trigger1 = time = 107
trigger2 = p2stateno = 1021
value = 1001

;---------------------------------------------------------------------------
; Net has hit
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1100
ctrl = 0

;[State 1001, 7]
;type = ChangeState
;trigger1 = p2stateno = 1021
;trigger1 = time > 12 
;value = 0
;ctrl = 1

[State 1030, 1.54]
type = Destroyself
;trigger1 = p2movetype != H
trigger1 = time = 150

[State 1001, 8]
type = Changestate
trigger1 = time = 10
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; The Net itself
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 5,0
anim = 1001
ctrl = 0

[State 1030, 1.65]
type = changestate
trigger1 = p2stateno != 1020
trigger1 = anim = 1002
trigger1 = Parent, stateno != [1000, 1030]
value = 1013

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 150

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

[State 1010, 2.1]
type = HitDef
trigger1 = time > 0
trigger1 = p2stateno != 9010
attr = S, HA
damage    = 0
priority  = 6
guardflag = HL
sparkno = -1
hitsound   = 5,1
guardsound = 5,14
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 1030
p2stateno = 1020
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1013

;------------------------------------------------------------------------
; WBJ's Less cheap thingy
[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 1003
Velset = 0,0
ctrl = 0

[State 1000, nd]
type = Playsnd
trigger1 = time = 1
value = 4, 8

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; P2's hit by net state
[Statedef 1020]
type    = S
movetype= H
physics = S
ctrl = 0
velset = 0,0

[State 1020, .5]
type = Changeanim
trigger1 = time = 0
value = 5000

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [30, 40]
value = 1021

[State 1020, 3]
type = Selfstate
trigger1 = time = 120
value = 0
ctrl = 1 
;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 700, Go2]
type = PLAYERPUSH
trigger1 = Time = 0
VALUE = 0

[State 1021, 1]
type = Changeanim
trigger1 = time = 0
value = 5000

[State 1021, 3]
type = Selfstate
trigger1 = time = 50
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Net latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1002
removeongethit = 1
Velset = 0, 0
ctrl = 0

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 120
trigger2 = p2bodydist Y = -5

[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 1020
pos = 0,95

[State 1030, 1.01]
type = Velset
trigger1 = time = 10
X = -3

[State 1030, 1.1]
type = Velset
trigger1 = ParentDist X = [-35, 80]
X = 0

[State 1030, 1.4]
type = Changeanim
trigger1 = p2stateno = 1021
trigger1 = anim != 1102
value = 1102

[State 1030, 1.5]
type = changestate
trigger1 = p2stateno != 1021
trigger1 = anim = 1102
trigger1 = Parent, stateno != [1000, 1030]
;trigger2 = Movecontact = 1
trigger2 = p2stateno != 1020 
trigger2 = p2stateno != 1021 
value = 1013

;-------------------------------------------------------
; LightningFAT
[StateDef 12001]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CSZ4]
type = LifeAdd
trigger1 = Life < 2
value = -10

[State 1005, CS3]
type = SelfState
trigger1 = time = 100
trigger1 = Life < 2
value = 5050

[State 1005, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 1005, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 2

[State 1005, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0


[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5


[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5


[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006

;--------------

[Statedef 1007]
type = S
movetype= H
physics = N
velset = 0,0

[State 1005, CS]
type = SelfState
trigger1 = time = 0
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 0
trigger1 = Pos Y < 0
value = 1006
;-----------------------

; Double ice hits back
[Statedef 1009]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 9998



[State 1009, Frosty color]
type = palFX
trigger1 = time != 0
;trigger1 = var(23) = 1
add = 100,150,250	
mul = 200,200,200
time = 2

[State 1009, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1009, VELSET]
type = PosSet
trigger1 = time = 0
Y = 0


[State 1005, VEL1]
type = posadd
trigger1 = time = 0
trigger2 = time = 10
trigger3 = time = 20
X = 2.5


[State 1005, VEL2]
type = posadd
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
X = - 2.5

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CSZ]
type = Changestate
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006


;------------------------

[Statedef 1006]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 5070

[State 1006, VELADD]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 1006, Hit ground A]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1006, Hit ground A]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 1006, Hit Ground C]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100 ;Hit ground

;--------------------------------

[Statedef 441]
type    = S
movetype= H
physics = S
juggle  = 4
;poweradd= 60
ctrl = 0
anim = 441

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 4
anim = 442
shadow = -1,250,250
pos = -50*const(size.xscale),-65*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1



;------------------------

[Statedef 701]
type    = S
movetype= H
physics = S
juggle  = 4
;poweradd= 60
ctrl = 0
anim = 701

[State 9010, 0.1]
type = Sprpriority
trigger1 = time = 1
value  >= 2

[State 1313, Bolt]
type = Explod
trigger1 = animelem = 1
anim = 703
shadow = -1,250,250
pos = 0*const(size.xscale),-75*const(size.xscale)
bindtime = -1
helpertype = normal
sprpriority = 3
ownpal = 1

[State 9399, 2]
type = Selfstate
trigger1 = AnimTime = 0
value = 5150

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 1
Value = -9999


[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ctrl = 1

;============================================================
[StateDef 13130]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 7,0,0
anim = 90002
ctrl = 0

[State 13130, Up]
type = VelSet
trigger1 = command = "holdback"
x = 4
ctrl = 1

[State 13130, Up]
type = VelSet
trigger1 = command = "holdup"
y = -1.2
ctrl = 1

[State 13130, Down]
type = VelSet
trigger1 = command = "holddown"
y = 1.2
ctrl = 1

[State 13130, BoltFat]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 85, 13
getpower = 80,10
animtype = Heavy
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,2
sparkno = -1
guard.sparkno = -1
hitsound   = s4,22
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 9
fall = 0
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1313, Bolt]
type = Explod
trigger1 = movehit = 1
anim = 90003
shadow = -1,250,250
name = "Laser"
postype = p2
pos = -40*const(size.xscale), 20*const(size.xscale)
bindtime = -1
helpertype = normal
ontop = 1
ownpal = 1

[State 2001, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = movehit = 1


;-----------------------------------------------
; Cipher44's Upper Lightning!!!
[StateDef 10000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 10000

[State 10000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 14

[State 10000, BoltFat]
type = Projectile
trigger1 = AnimElem = 2 
projanim = 10001
projhitanim = 10002
projremanim = 1211
postype 
offset = 0*const(size.xscale), 0*const(size.xscale)
velocity = 8, -3
remvelocity = 2.35, 0
; HitDef part of projectile info
attr = S, SP
damage    = 125, 23
getpower = 120,20
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s2424, 0
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 2
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
air.fall = 1
fall.recover = 0


[State 10000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 10000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;-----------------------------------------------
[StateDef 1410]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 8,0,0
anim = 1220

[State 1410, ClearVar]
type = VelSet
trigger1 = Time = 0
v = 20
value = 0

[State 1410, BoltFat]
type = HitDef
trigger1 = 1
attr = S, SP
damage    = 125, 23
getpower = 120,20
animtype = Hard
air.animtype = Back
air.fall = 1
fall.recover = 0

guardflag = L
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s2424, 0
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
air.juggle = 3
palfx.time = 20
palfx.mul = 70,250,270
palfx.add = 89,100,150
palfx.sinadd = 180,180,180,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1410, 10]
type = ChangeState
trigger1 = MoveContact = 1
value = 1420

[State 1410, FirstOffEdge]
type = VarAdd
trigger1 = FrontEdgeDist <= 0
v = 20
value = 1

[State 1410, Wrap]
type = PosAdd
trigger1 = (FrontEdgeDist <= 0) && (Var(20) = 1)
X = -330

[State 1410, GoByeBye]
type = DestroySelf
trigger1 = (FrontEdgeDist <= 0) && (Var(20) = 2)
trigger2 = Time >= 150


[StateDef 1420]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 2.35,0,0
anim = 1230

[State 1420, gobyebye]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time >= 150

;--------------------------------------------
; Torpedo for combos
[StateDef 1500]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1500


[State 1500, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1500, gibber]
type = PlaySnd
trigger1 = Time = 3
value = 4, 4

[State 1500, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1500, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 166, 41
getpower = 150,40
guardflag = L
hitflag = HAF
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = 5,2
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 1010
p2stateno = 1030
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1500, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1001

[State 1500, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
trigger2 = P2Dist X <= -20
ctrl = 0
value = 1002

[State 1500, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1003

;--------------------------------------------
; Torpedo
[StateDef 1510]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000 ;1510

[State 1510, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1510, select gibber]
type = VarRandom
trigger1 = Time = 3
v = 11
range = 0, 3

[State 1510, gibber]
type = PlaySnd
trigger1 = Time = 3
value = 4, Var(11)

[State 1510, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2

[State 1510, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = back
damage    = 166, 41
getpower = 150,40
guardflag = L
hitflag = HAF
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = 5,2
guardsound = S1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0.3,-4.2
air.hittime = 17  
p1stateno = 1010
p2stateno = 1030
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1510, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1101

[State 1510, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
;trigger2 = P2Dist X <= -20
ctrl = 0
value = 1102

[State 1510, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1103


;---------------------------------------------------------------------------
; Lightning Strike
[StateDef 2090]
type    = S
movetype= A
physics = S
velset = 0
anim = 2090
ctrl = 0

[State 2090, Storm]
type = PlaySnd
trigger1 = Time = 0
value = 4,18

[State 2090, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -33*const(size.xscale), -130*const(size.xscale)
anim = 102


[State 2090, Super2]
type = SuperPause
trigger1 = AnimElem = 1
pos = 36*const(size.xscale), -125*const(size.xscale)
anim = 102

[State 2090, gibber]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 2090, gibber2]
type = PlaySnd
trigger1 = Time = 8
value = 4,19

[State 2090, gibber3]
type = PlaySnd
trigger1 = Time = 12
value = 4,19

[State 2090, 2]
type = Projectile
trigger1 = Time = 0
projanim = 2091
projremanim = -1
projremovetime = 25
pos = 0*const(size.xscale),0 *const(size.xscale)
postype = p2
offset = 0*const(size.xscale), 0*const(size.xscale)
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 250, 29
getpower = 250,30 
animtype = Hard
air.animtype = Back
air.fall = 0
fall.recover = 0

fall = 1
hitflag = MFD
guardflag = L
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30 ;11
ground.velocity = 0, -15 ;-1, -15
guard.velocity = 0
air.velocity = 0, 0 ;-2, 0
air.hittime = 35 ;55
palfx.time = 70
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5
envshake.time = 40
envshake.freq = 190
envshake.ampl = -5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2090, 4]
type = ChangeState
trigger1 = time = 15
ctrl = 1
value = 0