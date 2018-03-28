wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/user2/vlsi18/vlsi1812/Lab4/Dec_BCDto7S.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Dec_BCDto7S_tb"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Dec_BCDto7S_tb/A} \
{/Dec_BCDto7S_tb/B} \
{/Dec_BCDto7S_tb/C} \
{/Dec_BCDto7S_tb/D} \
{/Dec_BCDto7S_tb/a} \
{/Dec_BCDto7S_tb/b} \
{/Dec_BCDto7S_tb/c} \
{/Dec_BCDto7S_tb/d} \
{/Dec_BCDto7S_tb/e} \
{/Dec_BCDto7S_tb/f} \
{/Dec_BCDto7S_tb/g} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Dec_BCDto7S_tb/A} \
{/Dec_BCDto7S_tb/B} \
{/Dec_BCDto7S_tb/C} \
{/Dec_BCDto7S_tb/D} \
{/Dec_BCDto7S_tb/a} \
{/Dec_BCDto7S_tb/b} \
{/Dec_BCDto7S_tb/c} \
{/Dec_BCDto7S_tb/d} \
{/Dec_BCDto7S_tb/e} \
{/Dec_BCDto7S_tb/f} \
{/Dec_BCDto7S_tb/g} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvExit
