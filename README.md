# Crouch Stance
A Garry's Mod addon that lets you toggle crouching with running.

This addon simply lets you toggle crouching. A somewhat similar example of this mechanic can be seen in games such as SOCOM II U.S. Navy SEALs.

# Console Commands

crouchstance: Activates or deactivates crouch stance.

crouchstance_mode: Changes and displays your selected stance type to either Toggle or Toggle + Run.

# Crouch Stance Modes

Toggle: This simply toggles crouch at all times when possible.

Toggle + Run: This automatically deactivates crouching when you are inputting player movement whenever possible. Reactivates toggle crouch when not inputting movement. (Velocity caused by other factors will not force crouch deactivation.)

# Binding

It is suggested you bind these like in the examples below based on your preferences:

bind b automove

bind n automove_mode

Keybind Name Reference: https://developer.valvesoftware.com/wiki/Bind

Unlike toggle_duck, crouch stance allows you to alternate from remaining crouched to moving with all non-crouch related movement such as walking, running, and sprinting while having a visual indicator.
