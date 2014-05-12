

Declare lock as "LockWorkStation" of "user32" 
  result as Long
end declare

Declare closesession as "ExitWindowsEx" of "user32"
  uFlag as Long byadress
  dwReserved as Long byadress
  result as Long
end declare

Appicon="cancel.ico"

Object app as Form
  caption="LockWorkStation V0.1"
  width=200
  height=100
  StayOnTop=true
  BorderIcons=0
  Borderstyle =1
  Object BtnClick as Button
    left=10
    top=20
    Caption="Lock"
    bitmap.loadfromfile("lock.bmp")
    onclick=fechar
  end object
  Object Btnclosesession as Button
    Top=20
    Left=100
    Caption="Session"
    bitmap.loadfromfile("close.bmp")
    onclick=sessionclosed
  end object
showmodal
end object


sub fechar
   lock.execute
end sub

sub sessionclosed 
   closesession.execute
end sub