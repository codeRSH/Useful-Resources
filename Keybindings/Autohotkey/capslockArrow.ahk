SetCapsLockState, AlwaysOff

CapsLock & h::Send, {blind}{Left}
CapsLock & j::Send, {blind}{Down}
CapsLock & l::Send, {blind}{Right}
CapsLock & k::Send, {blind}{Up}
CapsLock & u::Send, {blind}{PgUp}
CapsLock & i::Send, {blind}{PgDn}
CapsLock & y::Send, {blind}{Home}
CapsLock & o::Send, {blind}{End}
CapsLock & [::Send, {blind}{Delete}

!CapsLock:: ; Toggle CapslockState with alt-Capslock.
If GetKeyState("CapsLock", "T")
	SetCapsLockState, Off
Else
	SetCapsLockState, On

CapsLock:: ; Don't Toggle CapslockState with Capslock.
If GetKeyState("CapsLock", "T")
	SetCapsLockState, On
Else
	SetCapsLockState, Off
