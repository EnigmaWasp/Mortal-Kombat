
;--------------------------------------------
; Torpedo
[StateDef 2000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 900


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 40
x = 10

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 8

[State 1000, bber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 17


[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = back
damage    = 156, 41
getpower = 150,40
guardflag = HLMF
hitflag = AHLMF
pausetime = 20,0
sparkno = -1
guard.sparkno = -1
hitsound   = 5,0
p1stateno = 1001
guardsound = 5,14 
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-2
air.velocity = -3,-2.2
air.hittime = 17  
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 1001

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[StateDef 1001]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1001, 10]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
[StateDef 20002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 20002


[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 60
x = 6

[State 1100, aAcce]
type = VelAdd
trigger1 = Time < 15
trigger1 = movehit = 1
x = 2

[State 1000, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
;trigger6 = AnimElem = 16
attr = S, SA
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
damage = 40,50
getpower = 50,10
guardflag = HL
hitflag = HAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2,0                  ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
numhits = -1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
ground.velocity = -18,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2.3, -2.6
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
ground.cornerpush.veloff = -10
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1000, 10]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = Back
damage = 40,2
getpower = 50,10
guardflag = HL
hitflag = HAF                    ;Flags of conditions that move can hit
priority = 2, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 10,0                  ;Time attacker pauses, time victim shakes
sparkno = -1
guard.sparkno = -1
hitsound = 5,1
guardsound = 5,14             
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
p2facing = 1
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20 
ground.velocity = -18,0              ;Time to regain control after guard (def: guard.slidetime)
guard.velocity = -2
air.velocity = -2.3, -2.6
airguard.velocity = -1.9            ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
ground.cornerpush.veloff = -10
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1000, Bounf]
type = ChangeState
trigger1 = Moveguarded = 1
value = 10011

[State 1000, BounceOff]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;------
[StateDef 10011]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0

[State 1000, Accellw]
type = VelSet
trigger1 = time = 0
x = 0

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 50
x = -1

[State 1100, aAccell]
type = VelAdd
trigger1 = Time < 30
y = -.12

[State 1100, aAccell]
type = VelAdd
trigger1 = Time > 15
trigger1 = Time < 30
y = .3

[State 1000, snd]
type = Playsnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
triggerall = p2bodydist X <= 50
value = F5,14

[State 1001, 10]
type = Changestate
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
[StateDef 1030]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 1030, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1030

[State 1030, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1031, HitGround]
type = SelfState
trigger1 = (Pos Y = 0) || (Vel Y != 0)
value = 5100 ;Hit ground


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
[StateDef 1100]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000   

[State 1100, flyThrough]
type = PlayerPush
trigger1 = Time >= 0
value = 0

;[State 1100, select gibber]
;type = VarRandom
;trigger1 = Time = 3
;v = 11
;range = 0, 3

[State 1100, gibber]
type = PlaySnd
trigger1 = Time = 1
value = 4, 0

[State 1000, gibberrr]
type = PlaySnd
trigger1 = Time = 3
value = 14, 0

[State 1100, Accell]
type = VelAdd
trigger1 = Time < 6
x = 2.5

[State 1100, 10]
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


[State 1100, BounceOff]
type = ChangeState
trigger1 = MoveGuarded = 1
ctrl = 0
value = 1101

[State 1100, SlidToAHalt]
type = ChangeState
trigger1 = time > 50
;trigger2 = P2Dist X <= -20
ctrl = 0
value = 1102

[State 1100, OverShoot]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
ctrl = 0
value = 1103

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
; Torpedo, flew past opponent and hit corner
[StateDef 1103]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0

[State 1000, 10]
type = HitDef
trigger1 = Time <= 5
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
fall.recover = 0
kill = 0
fall = 1

[State 1001, 10]
type = ChangeState
trigger1 = Time = 10
ctrl = 0
value = 1102

;----------------------------------------------
; I hitum now fly.
[StateDef 1110]
type    = A
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 1110

[State 1110, setSpeed]
Type = VelSet
trigger1 = Time = 0
trigger1 = Vel X < 12
X = 12

[State 1110, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 1110, StickToHands]
Type = TargetBind
trigger1 = Time >= 0
pos = 16*const(size.xscale), -16*const(size.xscale)

[State 1010, StopEarly]
Type = ScreenBound
trigger1 = Time >= 40
value = 0
;movecamera = 0, 0

[State 1110, BangHitWall]
type = PlaySnd
trigger1 = FrontEdgeDist <= 20
value = F5, 2

[State 1110, YouBounce]
type = ChangeState
trigger1 = FrontEdgeDist <= 20
value = 1111
ctrl = 0

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
;value = 51
;CTRL = 1

;============================================================

[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1003
ctrl = 0

;[State 10000, open]
;type = PlaySnd
;trigger1 = AnimElem = 2 
;value = 14, 0

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 1
anim = 1000
pos = -5,-105
postype = p1
ID = 112
sprpriority  >= 2

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
;trigger1 = p2stateno != 9010
trigger1 = p2life > 2
projanim = 1001
;projhitanim = [F]6
;projremanim = [F]6
offset = 110*const(size.xscale), -106*const(size.xscale)
velocity = 10, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 100, 23
getpower = 140,20
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,0
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
;palfx.time = 20
;palfx.mul = 155,255,0
;palfx.add = 0,55,0
;palfx.sinadd = 55,155,0,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat1]
type = Projectile
trigger1 = AnimElem = 4
;trigger1 = p2stateno != 9010
trigger1 = p2life <= 2
projanim = 1001
;;;projhitanim = [F]6
;;;projremanim = [F]6
offset = 110*const(size.xscale), -106*const(size.xscale)
velocity = 10, 0 
remvelocity = 0, 0
attr = S, SP
projID = 1234
damage    = 100, 23
getpower = 140,20
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,0
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1002]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1000

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1200, Za]
type = VelSet
trigger1 = time = 1
trigger2 = Vel Y != 0
y = 0


[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 8
projanim = 1001
;projhitanim = 1230
;projremanim = 1211
offset = 60*const(size.xscale), -100*const(size.xscale)
velocity = 12, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 140, 23
getpower = 140,20
animtype = Light
air.animtype = Back
air.fall = 1
guardflag = HL
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s94,3
ground.type = High
p2stateno = 1007
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0



;-------------------------------------------------------
[StateDef 900]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1004

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 1000, 0.1]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, 2at]
type = Explod
trigger1 = animelem = 1
anim = 1000
pos = 30,-60
postype = p1
ID = 112
sprpriority  >= 2


[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4
;trigger1 = p2stateno != 9010
trigger1 = p2life > 2
projanim = 1001
;projhitanim = [F]6
;projremanim = [F]6
offset = 130*const(size.xscale), -58*const(size.xscale)
velocity = 10, 0 
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
projID = 1234
damage    = 100, 23
getpower = 140,20
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,0
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3
;palfx.time = 20
;palfx.mul = 155,255,0
;palfx.add = 0,55,0
;palfx.sinadd = 55,155,0,5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat1]
type = Projectile
trigger1 = AnimElem = 4
;trigger1 = p2stateno != 9010
trigger1 = p2life <= 2
projanim = 1001
;;;projhitanim = [F]6
;;;projremanim = [F]6
offset = 130*const(size.xscale), -58*const(size.xscale)
velocity = 10, 0 
remvelocity = 0, 0
attr = S, SP
projID = 1234
damage    = 100, 23
getpower = 140,20
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,0
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -3,-4
air.fall = 1
fall.recover = 0
air.juggle = 3


[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;---------------------------
[StateDef 9009]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0,0
anim = 1010
sprpriority = 9

[State 10000, open]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 4, 6

[State 88500, huck]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
X = -10

[State 1200, 2at]
type = Explod
trigger1 = animelem = 1
anim = 1000
pos = -10,-130
postype = p1
ID = 112
sprpriority  >= 2

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
trigger1 = stateno != 621
;triggerall = p2life > 10
;triggerall = p2life >= 2
trigger2 = stateno = 621
trigger2 = AnimElem = 1
projanim = 1001
;projhitanim = 1000
;projremanim = 1000
offset = 70*const(size.xscale), -134*const(size.xscale)
ID = 997
velocity = 10, 0 
remvelocity = 0, 0
attr = S, SP
damage    = 90, 23
getpower = 140,20
animtype = Light
air.animtype = Back
guardflag = HL
pausetime = 0,0
sparkno = 6
guard.sparkno = 6
hitsound   = S4,18
guardsound = S4,18
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -4,-5
air.fall = 1
fall.recover = 0
yaccel = 0.55
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 88500, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 88500, Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 1601

; Drop
[Statedef 1601]
type    = A
movetype= I
physics = A
juggle  = 4
poweradd= 0
velset = 0,0
anim = 2244
ctrl = 0

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3

;------------
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

;--------------------------
; Double ice hits back22222222
[Statedef 1019]
type    = S
movetype= H
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1019

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
; 
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