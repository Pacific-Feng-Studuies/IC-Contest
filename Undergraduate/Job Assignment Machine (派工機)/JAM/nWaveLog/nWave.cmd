wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/B073011012/MF_Hsieh/JAM/JAM.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM/f1"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM/f1"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM/f1"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/ns_per\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/ns_per\[3:0\]} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvZoom -win $_nWave1 0.000000 5254943.030697
wvZoom -win $_nWave1 0.000000 92959.450075
wvZoom -win $_nWave1 0.000000 1160.783976
wvZoom -win $_nWave1 0.000000 16.910485
wvZoom -win $_nWave1 0.000000 0.087984
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 8729.040583
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM/f1"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/ns_per\[3:0\]} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/f1/start} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetCursor -win $_nWave1 5813.304863 -snap {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/READ_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/start} \
{/testfixture/u_JAM/f1/ns_per\[3:0\]} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/add\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 7339.297389 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 21518.311280 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 34389.331578 -snap {("G1" 12)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 48388.496350 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 48424.829505 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 61268.599936 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 76617.541431 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 89452.228573 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 15514.257352 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 5922.304329 -snap {("G1" 10)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM/f1"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/start} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/add\[9:0\]} \
{/testfixture/u_JAM/f1/ns\[2:0\]} \
{/testfixture/u_JAM/f1/fin_per} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 420395442.455775 672632707.929240
wvZoom -win $_nWave1 550319944.442552 555569419.270304
wvZoom -win $_nWave1 553051200.856523 553138601.061771
wvZoom -win $_nWave1 553094218.855545 553097402.005581
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/start} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/add\[9:0\]} \
{/testfixture/u_JAM/f1/ns\[2:0\]} \
{/testfixture/u_JAM/f1/fin_per} \
{/testfixture/u_JAM/Valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetCursor -win $_nWave1 553096479.521320 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/start} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/add\[9:0\]} \
{/testfixture/u_JAM/f1/ns\[2:0\]} \
{/testfixture/u_JAM/f1/fin_per} \
{/testfixture/u_JAM/Valid} \
{/testfixture/u_JAM/end_signal} \
{/testfixture/u_JAM/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetCursor -win $_nWave1 553091166.542490 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 514984417.008325
wvZoom -win $_nWave1 0.000000 32688917.208645
wvPrevView -win $_nWave1
wvZoom -win $_nWave1 0.000000 45014246.647970
wvZoom -win $_nWave1 0.000000 702615.712507
wvZoom -win $_nWave1 0.000000 10966.946605
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 478654609.927502 598318262.409377
wvZoom -win $_nWave1 551249728.966973 554860806.929485
wvZoom -win $_nWave1 553022764.488845 553124220.373328
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 553095562.517081 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 553114301.767337 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 553095562.517081 -snap {("G1" 12)}
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 6703.900796 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4592.435978 -snap {("G1" 11)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/start} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/add\[9:0\]} \
{/testfixture/u_JAM/f1/ns\[2:0\]} \
{/testfixture/u_JAM/Valid} \
{/testfixture/u_JAM/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_JAM/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/READ_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/f1/cur_ans0\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans1\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans2\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans3\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans4\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans5\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans6\[2:0\]} \
{/testfixture/u_JAM/f1/cur_ans7\[2:0\]} \
{/testfixture/u_JAM/f1/start} \
{/testfixture/u_JAM/f1/cs_per\[3:0\]} \
{/testfixture/u_JAM/add\[9:0\]} \
{/testfixture/u_JAM/f1/ns\[2:0\]} \
{/testfixture/u_JAM/Valid} \
{/testfixture/u_JAM/next_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_JAM/state\[2:0\]} \
{/testfixture/MatchCount\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 486563215.645161 557484018.881374
wvZoom -win $_nWave1 546266576.538020 556967426.141819
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 478473796.365883 490232482.298881
wvZoom -win $_nWave1 482548346.226038 482658469.195233
wvExit
