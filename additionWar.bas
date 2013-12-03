' Aaron Raimist and Paul Knoll
' Final Program
mainwin 75 25
do : cls
cls : call getData nme1$, nme2$, mode
cls : call printResults nme1$, nme2$, mode
do : x=x+1 : loop until x=860000
confirm "Do you want to end the program?";finish$
loop until finish$ = "yes"
end


sub getData byref n1$, byref n2$, byref m
    mainwin 103 25
    line1$="             _     _ _ _   _              __          __        _ ":print line1$
    line2$="    /\      | |   | (_) | (_)             \ \        / /       | |":print line2$
    line3$="   /  \   __| | __| |_| |_ _  ___  _ __    \ \  /\  / /_ _ _ __| |":print line3$
    line4$="  / /\ \ / _` |/ _` | | __| |/ _ \| '_ \    \ \/  \/ / _` | '__| |":print line4$
    line5$=" / ____ \ (_| | (_| | | |_| | (_) | | | |    \  /\  / (_| | |  |_|":print line5$
    line6$="/_/    \_\__,_|\__,_|_|\__|_|\___/|_| |_|     \/  \/ \__,_|_|  (_)":print line6$
    print : print
    print "1. Player vs Player"
    print "2. Player vs Computer" : print
    input "Enter the number corresponding to the game mode you wish to play:  ";m
    cls : print line1$ : print line2$ : print line3$ : print line4$ : print line5$ : print line6$
    print : print
    if m = 1 then
        input "Enter Player 1's name:  ";n1$
        input "Enter Player 2's name:  ";n2$
    else
        input "Enter your name:  ";n1$ : n2$ = "NO PLAYER 2"
    end if
end sub


sub printResults n1$, n2$, m
    'print"             _     _ _ _   _              __          __           _____                         "
    'print"    /\      | |   | (_) | (_)             \ \        / /          / ____|                        "
    'print"   /  \   __| | __| |_| |_ _  ___  _ __    \ \  /\  / /_ _ _ __  | (___   ___ ___  _ __ ___  ___ "
    'print"  / /\ \ / _` |/ _` | | __| |/ _ \| '_ \    \ \/  \/ / _` | '__|  \___ \ / __/ _ \| '__/ _ \/ __|"
    'print" / ____ \ (_| | (_| | | |_| | (_) | | | |    \  /\  / (_| | |     ____) | (_| (_) | | |  __/\__ \"
    'print"/_/    \_\__,_|\__,_|_|\__|_|\___/|_| |_|     \/  \/ \__,_|_|    |_____/ \___\___/|_|  \___||___/"
    print : print
    print "Players -";tab(15);"Cards - "
    print n1$
    print n2$
    call cardChange n1$,n2$
    
end sub


function randomNumber(n)
    randomNumber = int(rnd(0)*13)+1
end function
