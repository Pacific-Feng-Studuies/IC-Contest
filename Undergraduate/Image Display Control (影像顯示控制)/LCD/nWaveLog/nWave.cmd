wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/B073011012/MF_Hsieh/LCD/LCD_CTRL.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/LCD_CTRL"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/LCD_CTRL/IRAM_A\[5:0\]} \
{/test/LCD_CTRL/IRAM_D\[7:0\]} \
{/test/LCD_CTRL/IRAM_valid} \
{/test/LCD_CTRL/IROM_A\[5:0\]} \
{/test/LCD_CTRL/IROM_Q\[7:0\]} \
{/test/LCD_CTRL/IROM_rd} \
{/test/LCD_CTRL/busy} \
{/test/LCD_CTRL/clk} \
{/test/LCD_CTRL/cmd\[3:0\]} \
{/test/LCD_CTRL/cmd_valid} \
{/test/LCD_CTRL/cs\[3:0\]} \
{/test/LCD_CTRL/img\[0:63\]} \
{/test/LCD_CTRL/ns\[3:0\]} \
{/test/LCD_CTRL/pos_x\[2:0\]} \
{/test/LCD_CTRL/pos_y\[2:0\]} \
{/test/LCD_CTRL/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 64756.165165 99632.405405
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 14 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 86985.840814 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 90190.684512 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 88179.802191 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 94002.982244 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 98757.881063 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 96286.171545 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 91049.498836 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 101690.417780 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 84838.805003 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 51795.400211 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 67997.665572 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 69463.933930 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 71432.922869 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 73506.645261 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 68479.439461 -snap {("G1" 12)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 69879.594827 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 68494.313231 -snap {("G1" 14)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 68651.413412 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 71468.743329 -snap {("G1" 14)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 72550.770828 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 73475.698145 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 75468.906694 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 75539.601776 -snap {("G1" 13)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 75573.640149 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 75552.693458 -snap {("G1" 14)}
