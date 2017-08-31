[Statedef 9000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 9000
ctrl = 0

[State 9000, 1]
type = Explod
trigger1 = time = 1
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 9011
trigger1 = p2stateno != [160,5000]
anim = F5
id = 7050
pos = 156*const(size.xscale),90*const(size.xscale)
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 1
removetime = 75

[State 9000, 5]
type = HitDef
trigger1 = p2life < 2
trigger1 = p2movetype != H
trigger1 = p2statetype != A
attr = CS, NA
numhits = -1
guardflag = A
hitflag = HLAMFD
;priority  = 7
sparkno = -1
p2stateno = 9010
damage = 99999,9999
kill = 0
ground.velocity = 0,50
air.velocity = 0,50
air.recovery = 0
recovery = 0

[State 9000, 5.5]
type = ParentVarset
trigger1 = time = 0
V = 13
value = 400

[State 9000, 6d]
type = TargetState
trigger1 = 1
trigger1 = StateType != A
value = 9010

[State 9000, 6]
type = Destroyself
trigger1 = time = 1
trigger2 = roundstate = 3
trigger3 = roundstate = 4


;---------------------------------------------------------------------------
;Fatality time
[Statedef 9010]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 9873, 1]
type = LifeSet
trigger1 = Animelem = 1
value = 1


[State 9873, 1324]
type = LifeSet
trigger1 = time = 1
value = 1


[State 987123, 1]
type = LifeAdd
trigger1 = Time = 350
value = -500

; After 600 ticks and with no fatality, p2 falls down
[State 987123, 1]
type = SelfState
trigger1 = Time = 350
value = 5050
ctrl = 0

[State 9010, 0.1]
type = Changeanim
trigger1 = statetype != A
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 9010, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
trigger1 = statetype != A
value = 9010

[State 9010, 034.1]
type = PosSet
trigger1 = p2stateno =[0,9999]
Y = 0

;-------------------------------------------------------------------------------


[Statedef 9011]
type    = S
movetype= H
physics = S
juggle  = -10
ctrl = 0
velset = 0,0,0

[State 987123, 1]
type = LifesET
trigger1 = 1
value = 4

; Dizzying animation
[State 987124, 2]
type = ChangeAnim 
trigger1 = AnimExist(5300)
trigger1 = Anim != 5300
value = 5300

