SetCapsLockState, AlwaysOff

CapsLock & h::Send, {blind}{Left}
CapsLock & j::Send, {blind}{Down}
CapsLock & l::Send, {blind}{Right}
CapsLock & k::Send, {blind}{Up}
CapsLock & y::Send, {blind}{PgUp}
CapsLock & n::Send, {blind}{PgDn}
CapsLock & u::Send, {blind}{Home}
CapsLock & o::Send, {blind}{End}
CapsLock & `;::Send, {blind}{BackSpace}
CapsLock & i::Send, {blind}{Del}

#CapsLock:: ; Toggle CapslockState with alt-Capslock.
If GetKeyState("CapsLock", "T")
	SetCapsLockState, Off
Else
	SetCapsLockState, On

CapsLock:: ; Don't Toggle CapslockState with Capslock.
If GetKeyState("CapsLock", "T")
	SetCapsLockState, On
Else
	SetCapsLockState, Off
