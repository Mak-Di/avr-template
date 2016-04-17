
.nolist
.include "/usr/share/avra/xxxx.inc"
.list

.def temp = r16

rjmp Init

Init:
  ldi temp, 0bxxxxxxxx        ;setup inputs and outputs for PortB
  out DDRB, temp
  ldi temp, 0bxxxxxxxx        ;setup inputs and outputs for PortD
  out DDRD, temp

  ldi temp, 0bxxxxxxxx        ;sets pull up resistors for PortB
  out PortB, temp             ; and initial values for outputs
  ldi temp, 0bxxxxxxxx        ;sets pull up resistors for PortD
  out PortD, temp             ; and initial values for outputs

Start:
  PUT_LOGIC_HERE
  rjmp Start
