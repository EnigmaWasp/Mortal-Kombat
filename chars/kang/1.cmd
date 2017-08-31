;--[AI Commands]---------------------------------------------
[Command]
name = "AI001"
command = U, U, D, D, B, B, B, F, F, F, a, a
time = 0

[Command]
name = "AI002"
command = U, U, D, D, B, B, B, F, F, F, b, b 
time = 0

[Command]
name = "AI003"
command = U, U, D, D, B, B, B, F, F, F, c, c
time = 0

[Command]
name = "AI004"
command = U, U, D, D, B, B, B, F, F, F, x, x
time = 0

[Command]
name = "AI005"
command = U, U, D, D, B, B, B, F, F, F, y, y
time = 0

[Command]
name = "AI006"
command = U, U, D, D, B, B, B, F, F, F, z, z
time = 0

[Command]
name = "AI007"
command = U, U, D, D, F, F, F, B, B, B, a, a
time = 0

[Command]
name = "AI008"
command = U, U, D, D, F, F, F, B, B, B, b, b
time = 0

[Command]
name = "AI009"
command = U, U, D, D, F, F, F, B, B, B, c, c
time = 0

[Command]
name = "AI010"
command = U, U, D, D, F, F, F, B, B, B, x, x
time = 0

[Command]
name = "AI011"
command = U, U, D, D, F, F, F, B, B, B, a, x
time = 0

[Command]
name = "AI012"
command = U, U, D, D, F, F, F, B, B, B, a, y
time = 0

[Command]
name = "AI013"
command = U, U, D, D, F, F, F, B, B, B, a, z
time = 0

[Command]
name = "AI014"
command = U, U, D, D, F, F, F, B, B, B, a, b
time = 0

[Command]
name = "AI015"
command = U, U, D, D, F, F, F, B, B, B, a, c
time = 0

[Command]
name = "AI016"
command = U, U, D, D, F, F, F, B, B, B, b, x
time = 0

[Command]
name = "AI017"
command = U, U, D, D, F, F, F, B, B, B, b, y
time = 0

[Command]
name = "AI018"
command = U, U, D, D, F, F, F, B, B, B, b, z
time = 0

[Command]
name = "AI019"
command = U, U, D, D, F, F, F, B, B, B, b, a
time = 0

[Command]
name = "AI020"
command = U, U, D, D, F, F, F, B, B, B, b, c
time = 0

[Command]
name = "AI021"
command = U, U, D, D, F, F, F, D, D, D, a, x
time = 0

[Command]
name = "AI022"
command = U, U, D, D, F, F, F, D, D, D, a, y
time = 0

[Command]
name = "AI023"
command = U, U, D, D, F, F, F, D, D, D, a, z
time = 0

[Command]
name = "AI024"
command = U, U, D, D, F, F, F, D, D, D, a, b
time = 0

[Command]
name = "AI025"
command = U, U, D, D, F, F, F, D, D, D, a, c
time = 0

[Command]
name = "AI026"
command = U, U, D, D, F, F, F, D, D, D, b, x
time = 0

[Command]
name = "AI027"
command = U, U, D, D, F, F, F, D, D, D, b, y
time = 0

[Command]
name = "AI028"
command = U, U, D, D, F, F, F, D, D, D, b, z
time = 0

[Command]
name = "AI029"
command = U, U, D, D, F, F, F, D, D, D, b, a
time = 0

[Command]
name = "AI030"
command = U, U, D, D, F, F, F, D, D, D, b, c
time = 0



;-| Special Motions |------------------------------------------------------


[Command]
name = "spear"
command = F, F, x
time = 20

[Command]
name = "spear1"
command = F, F, a
time = 20

[Command]
name = "clone"
command = B,B, F, b
time = 20

[Command]
name = "tele"
command = F,F,y
time = 20

[Command]
name = "inv"
command = 
time = 25

;-[Finishers]----------------------------------------------------

[Command]
name = "fatal"
command = 
time = 35

[Command]
name = "fatal1"
command = 
time = 35

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = 
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "Run"
command = /c, F
time = 5

[Command]
name = "Run2"
command = c
time = 5


[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "blok"
command = /$z
time = 5

[Command]
name = "blokk"
command = /$z + D
time = 5

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "Block1"  ;Required (do not remove)
command = /c
time = 1

[Command]
name = "Block2"  ;Required (do not remove)
command = /z
time = 1

[Command]
name = "holdfu"
command = /$FU
time = 1

[Command]
name = "holdfd"
command = /$FD
time = 1

[Command]
name = "holdbu"
command = /$BU
time = 1

[Command]
name = "holdbd"
command = /$BD
time = 1

[Command]
name = "hold_d"
command = /z

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;-[AI]----------------------------------------
; Var Activators
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI001"
trigger2 = command = "AI002"
trigger3 = command = "AI003"
trigger4 = command = "AI004"
trigger5 = command = "AI005"
trigger6 = command = "AI006"
trigger7 = command = "AI007"
trigger8 = command = "AI008"
v = 35
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI009"
trigger2 = command = "AI010"
trigger3 = command = "AI011"
trigger4 = command = "AI012"
trigger5 = command = "AI013"
trigger6 = command = "AI014"
trigger7 = command = "AI015"
trigger8 = command = "AI016"
v = 35
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI017"
trigger2 = command = "AI018"
trigger3 = command = "AI019"
trigger4 = command = "AI020"
trigger5 = command = "AI021"
trigger6 = command = "AI022"
trigger7 = command = "AI023"
trigger8 = command = "AI024"
v = 35
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "AI025"
trigger2 = command = "AI026"
trigger3 = command = "AI027"
trigger4 = command = "AI028"
trigger5 = command = "AI029"
trigger6 = command = "AI030"
v = 35
value = 1


;-----------------------------------

;bl
[State -1, start]
type = ChangeState
value = 120
triggerall = statetype != A
triggerall = command="hold_d"
trigger1 = anim != [120,132]
trigger1 = ctrl

;---------------------------------------------------------------------------
;blok
[State -1, Stand]
type = ChangeState
value = 130
triggerall=command="hold_d"&&command!="holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = stateno = 120
trigger1 = animtime = 6
trigger2 = statetype = S
trigger2 = stateno = 140

;---------------------------------------------------------------------------
;blok
[State -1, c]
type = ChangeState
value = 131
triggerall = command = "hold_d"&&command="holddown"
triggerall = statetype = C
triggerall = statetype != A
trigger1 = stateno = 120
trigger1 = animtime = 0
trigger2 = stateno = 140

;---------------------------------------------------------------------------
[State -1, Runmk]
type = ChangeState
value = 107
triggerall = command = "holdfwd"
triggerall = command = "Run2"
triggerall = NumExplod(7080) != 1
trigger1 = statetype = S
trigger1 = Anim != 100
trigger1 = ctrl

;[State -1, blok]
;type = ChangeState
;value = 130
;triggerall = Vel Y = 0
;triggerall = timemod = 3,8
;triggerall = ctrl = 1
;triggerall = Var(35) = 1
;trigger1 = p2stateno = 620
;trigger2 = p2stateno = 1000
;trigger1 = p2BodyDist X < 30
;trigger3 = p2BodyDist X < 50
;trigger3 = p2movetype = A

;--[Special Moves]-----------------------------------------------------------

[State -1]
type = ChangeState
value = 1000
triggerall = command = "spear"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1,air]
type = ChangeState
value = 9009
triggerall = command = "spear"
;triggerall = p2stateno != 9010
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = stateno = 611
trigger3 = MoveContact
trigger3 = stateno = 621
trigger4 = stateno = 601
;trigger1 = command = "spear"

[State -1, aice]
type = ChangeState
value = 900
triggerall = Var(35) = 1
triggerall = p2stateno != 12001
triggerall = Vel Y = 0
triggerall = statetype != A
trigger1 = p2stateno = 1000
;trigger2 = p2stateno = 620
trigger2 = p2stateno = 245
;trigger3 = p2stateno = 5150
triggerall = ctrl = 1

[State -1]
type = ChangeState
value = 900
triggerall = command = "spear1"
;triggerall = p2stateno != 9010
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 2000
triggerall = command = "tele"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1,aislide]
type = ChangeState
value = 2000
triggerall = Var(35) = 1
trigger1 = p2stateno = 12001
trigger1 = p2bodydist X > 50
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = 20002
triggerall = command = "clone"
triggerALL = NUMEXPLOD(112) = 0
triggerall = p2stateno != 12001
trigger1 = statetype = S
triggerall = ctrl = 1

[State -1, aiclone]
type = ChangeState
value = 20002
triggerall = Var(35) = 1
triggerALL = NUMEXPLOD(112) = 0
triggerall = p2stateno != 12001
trigger1 = p2stateno = 107
trigger2 = p2stateno = 620
trigger2 = p2bodydist X < 150
trigger3 = p2stateno = 1001
trigger4 = p2stateno = 245
trigger4 = p2BodyDist X < 80
triggerall = ctrl = 1
triggerall = statetype = S

;[State -1, clonestop]
;type = ChangeState
;value = 107
;triggerall = Var(35) = 1
;trigger1 = p2stateno = 12001
;trigger1 = ctrl = 1


[State -1, upper]
type = ChangeState
value = 430
triggerall = ctrl = 1
triggerall = Var(35) = 1
trigger1 = p2stateno = 12001
triggerall = Vel Y = 0
triggerall = statetype != A
triggerall = p2bodydist X < 15

;[State -1,fatal]
;type = ChangeState
;value = 730
;triggerall = p2bodydist X < 160
;triggerall = p2bodydist X > 100
;triggerall = command = "fatal"
;triggerall = p2stateno = 9010
;trigger1 = statetype = S
;trigger1 = ctrl = 1


;[State -1,fatal]
;type = ChangeState
;value = 512
;triggerall = p2bodydist X < 3
;triggerall = command = "fatal1"
;triggerall = p2stateno = 9010
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;[State -1,aifatal]
;type = ChangeState
;value = 730
;triggerall = p2bodydist X < 160
;triggerall = p2bodydist X > 100
;triggerall = Var(35) = 1
;triggerall = p2stateno = 9010
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;triggerall = Vel Y = 0

;--[MK Holdback, closeup moves]-----------------------------------------------
;Roundhouse - Scorpion
[State -1]
type = Changestate
value = 240
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
triggerall = Vel Y = 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Sweep
[State -1]
type = Changestate
value = 245
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = statetype = S
triggerall = Vel Y = 0
trigger1 = ctrl = 1


[State -1, teleport]
type = ChangeState
value = 245
triggerall = ctrl = 1
triggerall = Var(35) = 1
triggerall = time = 1
trigger1 = p2stateno = [200,230]
trigger2 = p2stateno = [130,135]
trigger3 = p2stateno = 430
triggerall = p2bodydist X < 70
triggerall = Vel Y = 0
triggerall = Pos Y = 0
triggerall = statetype != A

;--[Regular moves]----------------------------------------------------------------------
;-----------------------------
[State -1, Stand LPunch1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X > 3
triggerall = stateno != [203,9999]
triggerall = stateno != [22,199]
triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201 && time >= 10


;Stand Light Punch 2
[State -1, Stand LPunch2]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X > 3
triggerall = stateno != [203,9999]
triggerall = stateno != [22,199]
triggerall = Vel Y = 0
trigger1 = stateno = 200 && time >= 10
trigger1 = statetype = S

;LP
[State -1, Stand SPunch1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X > 3
triggerall = stateno != [222,9999]
triggerall = stateno != [22,210]
triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 221 && time >= 10

;Stand strong Punch 2
[State -1, Stand SPunch2]
type = ChangeState
value = 221
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X > 3
triggerall = stateno != [222,9999]
triggerall = stateno != [22,210]
triggerall = Vel Y = 0
trigger1 = stateno = 220 && time >= 10
trigger1 = statetype = S

;COMBO
[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger2 = stateno = 206 
trigger2 = movecontact 
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 3]
type = ChangeState
value = 203
triggerall = p2bodydist X <= 3
triggerall = command = "b"
;triggerall = command != "holddown"
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 202
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


;[State -1, 3]
;type = ChangeState
;value = 240
;triggerall = p2bodydist X <= 3
;triggerall = command = "b"
;triggerall = command = "holdback"
;trigger2 = movecontact 
;trigger1 = statetype = S 
;trigger2 = stateno = 203
;trigger1 = ctrl = 1
;triggerall = Vel Y = 0 


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
;trigger2 = movecontact 
trigger1 = statetype = S 
;trigger2 = stateno = 203
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 4]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 204
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 4]
type = ChangeState
value = 206
triggerall = p2bodydist X <= 3
triggerall = command = "x"
;triggerall = command != "holddown"
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 205
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


;[State -1, 4]
;type = ChangeState
;value = 207
;triggerall = p2bodydist X <= 3
;triggerall = command = "x"
;;triggerall = command != "holddown"
;triggerall = movecontact
;trigger1 = statetype = S 
;trigger2 = stateno = 206
;trigger1 = ctrl = 1
;triggerall = Vel Y = 0 


;[State -1, 4]
;type = ChangeState
;value = 430
;triggerall = p2bodydist X <= 3
;triggerall = command = "x"
;triggerall = command != "holddown"
;triggerall = movecontact
;trigger1 = statetype = S 
;trigger2 = stateno = 207
;trigger1 = ctrl = 1
;triggerall = Vel Y = 0 


[State -1, 3]
type = ChangeState
value = 2081
triggerall = p2bodydist X <= 3
triggerall = command = "b"
trigger1 = movecontact 
trigger1 = statetype = S 
trigger1 = stateno = 203
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

[State -1, 3]
type = ChangeState
value = 2082
triggerall = p2bodydist X <= 3
triggerall = command = "b"
trigger1 = movecontact 
trigger1 = statetype = S 
trigger1 = stateno = 2081
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

;---------------------


AI COMBO


[State -1, 2]
type = ChangeState
value = 202
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger1 = statetype = S
trigger2 = stateno = 206 
trigger2 = movecontact 
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 3]
type = ChangeState
value = 203
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 202
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 3]
type = ChangeState
value = 204
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
;trigger2 = movecontact 
trigger1 = statetype = S 
;trigger2 = stateno = 203
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 4]
type = ChangeState
value = 205
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger2 = movecontact 
trigger1 = statetype = S 
trigger2 = stateno = 204
trigger1 = ctrl = 1
triggerall = Vel Y = 0 


[State -1, 4]
type = ChangeState
value = 206
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
triggerall = movecontact
trigger1 = statetype = S 
trigger2 = stateno = 205
trigger1 = ctrl = 1
triggerall = Vel Y = 0 




[State -1, 3]
type = ChangeState
value = 2081
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger1 = movecontact 
trigger1 = statetype = S 
trigger1 = stateno = 203
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

[State -1, 3]
type = ChangeState
value = 2082
triggerall = p2bodydist X <= 3
triggerall = Var(35) = 1
trigger1 = movecontact 
trigger1 = statetype = S 
trigger1 = stateno = 2081
;trigger1 = ctrl = 1
triggerall = Vel Y = 0 

;-----------------------------
;THRoW
[State -1, 2]
type = ChangeState
value = 24
triggerall = p2bodydist X <= 3
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S 
;triggerall = p2statetype != A
trigger1 = ctrl = 1
triggerall = Vel Y = 0 

[State -1, ai2]
type = ChangeState
value = 24
triggerall = Var(35) = 1
triggerall = p2bodydist X <= 10
trigger1 = p2statetype = C
trigger2 = p2statetype = S
trigger3 = p2stateno = 131
triggerall = ctrl = 1
triggerall = Vel Y = 0 

;----------------------------
;High Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Low Kick
[State -1]
type = ChangeState
value = 225
triggerall = command = "b"
triggerall = command != "holddown"
 triggerall = Vel Y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------
; MK Uppercut (ahh, the memories ...)
[State -1, MKUppa]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, AIMKUppa]
type = ChangeState
value = 430
triggerall = Var(35) = 1
trigger1 = statetype != A
trigger1 = ctrl = 1
triggerall = Vel Y = 0
trigger1 = p2stateno = 12001
trigger1 = p2bodydist X < 30


[State -1, Duck LK]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, Duck HK]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

[State -1, Duck LP]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
triggerall = Vel Y = 0

;---[Air Moves]------------------------------------
;Jump Kick
[State -1, NKick]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X = 0 
trigger1 = command = "y"
trigger2 = command = "b"


;Jump Punch
[State -1, Punch]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "x"


;Jump Side kick
[State -1, SideKick]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X != 0 
trigger1 = command = "y"
trigger2 = command = "b"

[State -1, AI No Jump]
type = null
triggerall = Var(35) = 1
trigger1 = p2stateno = 9010
value = 40

[State -1, AI No bl]
type = null
triggerall = Var(35) = 1
trigger1 =  life <= 10
value = 130

[State -1, AI ctrl]
type = Ctrlset
triggerall = Var(35) = 1
trigger1 = stateno = 9010
value = 0
