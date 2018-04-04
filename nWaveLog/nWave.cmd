wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/user2/vlsi18/vlsi1812/Lab4/addsub_8bit.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/addsub_8bit_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/addsub_8bit_tb/A\[7:0\]} \
{/addsub_8bit_tb/B\[7:0\]} \
{/addsub_8bit_tb/S\[7:0\]} \
{/addsub_8bit_tb/addsub} \
{/addsub_8bit_tb/cout} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/addsub_8bit_tb/A\[7:0\]} \
{/addsub_8bit_tb/B\[7:0\]} \
{/addsub_8bit_tb/S\[7:0\]} \
{/addsub_8bit_tb/addsub} \
{/addsub_8bit_tb/cout} \
{/addsub_8bit_tb/ov_flag} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
