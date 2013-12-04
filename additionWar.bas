' Aaron Raimist and Paul Knoll
' Final Program
mainwin 75 25
do : cls
cls : call getData nme1$, nme2$, mode, line1$, line2$, line3$, line4$, line5$, line6$
cls : call printResults nme1$, nme2$, mode, line1$, line2$, line3$, line4$, line5$, line6$
call cardChange num1,num2
do : x=x+1 : loop until x=860000
confirm "Do you want to end the program?";finish$
loop until finish$ = "yes"
end


sub getData byref n1$, byref n2$, byref m, byref line1$, byref line2$, byref line3$, byref line4$, byref line5$, byref line6$
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
    do
        input "Enter the number corresponding to the game mode you wish to play:  ";m
    loop until m=1 or m=2
    cls : print line1$ : print line2$ : print line3$ : print line4$ : print line5$ : print line6$
    print : print
    if m = 1 then
        'do
            input "Enter Player 1's name:  ";n1$
        'loop until nl$ <> ""
        'do
            input "Enter Player 2's name:  ";n2$
        'loop until n2$ <> ""
    else
        input "Enter your name:  ";n1$ : n2$ = "Computer"
    end if
end sub


sub printResults n1$, n2$, m, line1$, line2$, line3$, line4$, line5$, line6$
    print line1$;"   _____                 _ _"
    print line2$;"  |  __ \               | | |"
    print line3$;"  | |__) |___  ___ _   _| | |_ ___"
    print line4$;"  |  _  // _ \/ __| | | | | __/ __|"
    print line5$;"  | | \ \  __/\__ \ |_| | | |_\__ \"
    print line6$;"  |_|  \_\___||___/\__,_|_|\__|___/"
    print : print
    print "Players -";tab(15);"Cards - "
    print n1$
    print n2$
end sub


function randomNumber(n)
    randomNumber = int(rnd(0)*13)+1
end function


sub cardChange n1,n2
        n1=randomNumber(n1)
        select n1
            case n1=1
          print " _________"
          print "|A        |"
          print "|@   *    |"
          print "|   / \   |"
          print "|  /_@_\  |"
          print "|    !    |"
          print "|   ~ ~  @|"
          print "|        V|"
          print " ~~~~~~~~~ "
          end select
end sub

