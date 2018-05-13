<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="draradech">
<packages>
<package name="BAT">
<pad name="N" x="-2.54" y="0" drill="2" diameter="3.556" shape="octagon"/>
<pad name="P" x="2.54" y="0" drill="2" diameter="3.556" shape="octagon"/>
<text x="-3.81" y="-3.81" size="1.27" layer="21" ratio="16">- BAT +</text>
</package>
<package name="CPOL-C">
<smd name="POS" x="0" y="-2.1" dx="0.8" dy="2.6" layer="1"/>
<smd name="NEG" x="0" y="2.1" dx="0.8" dy="2.6" layer="1"/>
<wire x1="0.7" y1="2.7" x2="2.7" y2="2.7" width="0.2032" layer="21"/>
<wire x1="2.7" y1="2.7" x2="2.7" y2="-2" width="0.2032" layer="21"/>
<wire x1="2.7" y1="-2" x2="2" y2="-2.7" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.7" x2="0.7" y2="-2.7" width="0.2032" layer="21"/>
<wire x1="-0.7" y1="2.7" x2="-2.7" y2="2.7" width="0.2032" layer="21"/>
<wire x1="-2.7" y1="2.7" x2="-2.7" y2="-2" width="0.2032" layer="21"/>
<wire x1="-2.7" y1="-2" x2="-2" y2="-2.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.7" x2="-0.7" y2="-2.7" width="0.2032" layer="21"/>
<text x="3.048" y="1.3208" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
<package name="CPOL_3,5">
<pad name="P" x="-1.75" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="N" x="1.75" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="4.5" y="-0.75" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<circle x="0" y="0" radius="4" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.25" x2="-1.75" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-1.5" y2="-1.5" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="2" y2="-1.5" width="0.2032" layer="21"/>
</package>
<package name="D-SUN_SWITCHING">
<pad name="NI" x="-9.27" y="6.6" drill="1" diameter="1.778" shape="octagon"/>
<pad name="NI2" x="-9.27" y="4.06" drill="1" diameter="1.778" shape="octagon"/>
<pad name="PI" x="-9.27" y="-4.06" drill="1" diameter="1.778" shape="octagon"/>
<pad name="PI2" x="-9.27" y="-6.6" drill="1" diameter="1.778" shape="octagon"/>
<pad name="NO" x="9.27" y="6.6" drill="1" diameter="1.778" shape="octagon"/>
<pad name="NO2" x="9.27" y="4.06" drill="1" diameter="1.778" shape="octagon"/>
<pad name="PO" x="9.27" y="-4.06" drill="1" diameter="1.778" shape="octagon"/>
<pad name="PO2" x="9.27" y="-6.6" drill="1" diameter="1.778" shape="octagon"/>
<wire x1="-11.1" y1="8.4" x2="11.1" y2="8.4" width="0.2032" layer="21"/>
<wire x1="11.1" y1="8.4" x2="11.1" y2="-8.4" width="0.2032" layer="21"/>
<wire x1="11.1" y1="-8.4" x2="-11.1" y2="-8.4" width="0.2032" layer="21"/>
<wire x1="-11.1" y1="-8.4" x2="-11.1" y2="8.4" width="0.2032" layer="21"/>
<text x="-8.89" y="0" size="1.27" layer="21" ratio="16">IN</text>
<text x="8.89" y="1.27" size="1.27" layer="21" ratio="16" rot="R180">OUT</text>
<text x="-6.35" y="5.08" size="1.27" layer="21" ratio="16">-</text>
<text x="5.08" y="5.08" size="1.27" layer="21" ratio="16">-</text>
<text x="-6.35" y="-6.35" size="1.27" layer="21" ratio="16">+</text>
<text x="5.08" y="-6.35" size="1.27" layer="21" ratio="16">+</text>
<text x="-11.43" y="8.89" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
<package name="DRV8825">
<pad name="P$1" x="0" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$3" x="5.08" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="0" y="-3.81" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<pad name="P$4" x="7.62" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$5" x="10.16" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$6" x="12.7" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$7" x="15.24" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$8" x="17.78" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$9" x="17.78" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$10" x="15.24" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$11" x="12.7" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$12" x="10.16" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$13" x="7.62" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$14" x="5.08" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$15" x="2.54" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$16" x="0" y="-12.7" drill="1" diameter="1.778" shape="octagon"/>
<wire x1="-1.27" y1="1.27" x2="19.05" y2="1.27" width="0.2032" layer="21"/>
<wire x1="19.05" y1="1.27" x2="19.05" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-1.27" x2="19.05" y2="-13.97" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-13.97" x2="-1.27" y2="-13.97" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-13.97" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="3.81" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-1.27" x2="19.05" y2="-1.27" width="0.2032" layer="21"/>
</package>
<package name="NEOSID_SD75">
<pad name="P" x="-2.5" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="N" x="2.5" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="-2.5" y="-4" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<wire x1="-4" y1="2.5" x2="-4" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-4" y1="-2.5" x2="4" y2="-2.5" width="0.127" layer="21"/>
<wire x1="4" y1="-2.5" x2="4" y2="2.5" width="0.127" layer="21"/>
<wire x1="4" y1="2.5" x2="-4" y2="2.5" width="0.127" layer="21"/>
</package>
<package name="R_12">
<pad name="P" x="0" y="-6" drill="1" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="N" x="0" y="6" drill="1" diameter="1.778" shape="octagon" rot="R180"/>
<text x="-1" y="-9" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<wire x1="0" y1="-4.5" x2="0" y2="-3" width="0.2032" layer="21"/>
<wire x1="0" y1="-3" x2="-0.75" y2="-3" width="0.2032" layer="21"/>
<wire x1="-0.75" y1="-3" x2="-0.75" y2="3" width="0.2032" layer="21"/>
<wire x1="-0.75" y1="3" x2="0" y2="3" width="0.2032" layer="21"/>
<wire x1="0" y1="3" x2="0.75" y2="3" width="0.2032" layer="21"/>
<wire x1="0.75" y1="3" x2="0.75" y2="-3" width="0.2032" layer="21"/>
<wire x1="0.75" y1="-3" x2="0" y2="-3" width="0.2032" layer="21"/>
<wire x1="0" y1="3" x2="0" y2="4.5" width="0.2032" layer="21"/>
</package>
<package name="0805">
<smd name="P$1" x="-1" y="0" dx="1" dy="1.25" layer="1"/>
<smd name="P$2" x="1" y="0" dx="1" dy="1.25" layer="1"/>
<wire x1="-0.29" y1="0.5" x2="0.29" y2="0.5" width="0.2032" layer="21"/>
<wire x1="-0.29" y1="-0.5" x2="0.29" y2="-0.5" width="0.2032" layer="21"/>
<text x="-1.4" y="0.8" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
<package name="X4">
<pad name="P$1" x="-2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="0" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$3" x="2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="-3.81" y="1.524" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<pad name="P$4" x="5.08" y="0" drill="1" diameter="1.778" shape="octagon"/>
</package>
<package name="X2">
<pad name="P$1" x="-1.27" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="1.27" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="-2.54" y="1.524" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
<package name="GY-521">
<pad name="P$1" x="0" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$3" x="5.08" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="0" y="-3.81" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<pad name="P$4" x="7.62" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$5" x="10.16" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$6" x="12.7" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$7" x="15.24" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$8" x="17.78" y="0" drill="1" diameter="1.778" shape="octagon"/>
<wire x1="-1.27" y1="1.27" x2="19.05" y2="1.27" width="0.2032" layer="21"/>
<wire x1="19.05" y1="1.27" x2="19.05" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-1.27" x2="19.05" y2="-13.97" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-13.97" x2="-1.27" y2="-13.97" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-13.97" x2="-1.27" y2="1.27" width="0.2032" layer="21"/>
</package>
<package name="ESP-32-DEV">
<pad name="P$1" x="0" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$3" x="5.08" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="-1.27" y="-3.81" size="1.27" layer="25" ratio="16">&gt;NAME</text>
<pad name="P$4" x="7.62" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$5" x="10.16" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$6" x="12.7" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$7" x="15.24" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$8" x="17.78" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$9" x="20.32" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$10" x="22.86" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$11" x="25.4" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$12" x="27.94" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$13" x="30.48" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$14" x="33.02" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$15" x="35.56" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$16" x="35.56" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$17" x="33.02" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$18" x="30.48" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$19" x="27.94" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$20" x="25.4" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$21" x="22.86" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$22" x="20.32" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$23" x="17.78" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$24" x="15.24" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$25" x="12.7" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$26" x="10.16" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$27" x="7.62" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$28" x="5.08" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<wire x1="45.72" y1="1.905" x2="-6.35" y2="1.905" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-27.305" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="-27.305" x2="45.72" y2="-27.305" width="0.2032" layer="21"/>
<wire x1="45.72" y1="-27.305" x2="45.72" y2="-17.145" width="0.2032" layer="21"/>
<pad name="P$29" x="2.54" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$30" x="0" y="-25.4" drill="1" diameter="1.778" shape="octagon"/>
<wire x1="45.72" y1="-17.145" x2="45.72" y2="-8.255" width="0.2032" layer="21"/>
<wire x1="45.72" y1="-8.255" x2="45.72" y2="1.905" width="0.2032" layer="21"/>
<wire x1="45.72" y1="-8.255" x2="46.99" y2="-8.255" width="0.127" layer="21"/>
<wire x1="46.99" y1="-8.255" x2="46.99" y2="-17.145" width="0.127" layer="21"/>
<wire x1="46.99" y1="-17.145" x2="45.72" y2="-17.145" width="0.127" layer="21"/>
</package>
<package name="SOLDER_JUMP">
<smd name="P$1" x="-0.6" y="0" dx="1" dy="2" layer="1"/>
<smd name="P$2" x="0.6" y="0" dx="1" dy="2" layer="1"/>
<text x="-1.2" y="1.2" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
<package name="X5-BIGOUT">
<pad name="P$1" x="-5.08" y="0" drill="1.5" diameter="2.286" shape="octagon"/>
<pad name="P$2" x="-2.54" y="0" drill="1.5" diameter="2.286" shape="octagon"/>
<pad name="P$3" x="0" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$4" x="2.54" y="0" drill="1.5" diameter="2.286" shape="octagon"/>
<pad name="P$5" x="5.08" y="0" drill="1.5" diameter="2.286" shape="octagon"/>
<text x="-6.35" y="1.524" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
<package name="X5">
<pad name="P$1" x="-5.08" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$2" x="-2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$3" x="0" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$4" x="2.54" y="0" drill="1" diameter="1.778" shape="octagon"/>
<pad name="P$5" x="5.08" y="0" drill="1" diameter="1.778" shape="octagon"/>
<text x="-6.35" y="1.524" size="1.27" layer="25" ratio="16">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="BAT">
<pin name="BAT+" x="7.62" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="BAT-" x="7.62" y="-2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="-7.62" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<text x="2.54" y="5.08" size="1.524" layer="95" rot="R180">&gt;NAME</text>
</symbol>
<symbol name="CPOL">
<pin name="-" x="0" y="5.08" visible="off" length="short" rot="R270"/>
<pin name="+" x="0" y="-2.54" visible="off" length="short" rot="R90"/>
<wire x1="1.27" y1="1.016" x2="0" y2="1.016" width="0.254" layer="94"/>
<wire x1="0" y1="1.016" x2="-1.27" y2="1.016" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.524" x2="0" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="1.524" x2="1.27" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.016" width="0.1524" layer="94"/>
<text x="2.54" y="2.54" size="1.524" layer="95">&gt;NAME</text>
<text x="2.54" y="0" size="1.524" layer="96">&gt;VALUE</text>
<wire x1="0.762" y1="0" x2="0.762" y2="0.508" width="0.254" layer="94"/>
<wire x1="0.508" y1="0.254" x2="1.016" y2="0.254" width="0.254" layer="94"/>
</symbol>
<symbol name="D-SUN_SWITCHING">
<pin name="VIN" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="VOUT" x="15.24" y="2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<text x="10.16" y="7.62" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<text x="-10.16" y="-7.62" size="1.524" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="-10.16" visible="pin" length="middle" rot="R90"/>
</symbol>
<symbol name="DRV8825">
<pin name="VMOT" x="-15.24" y="12.7" visible="pin" length="middle"/>
<pin name="GND" x="-15.24" y="10.16" visible="pin" length="middle"/>
<pin name="EN" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="RST" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="SLP" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="M0" x="-15.24" y="-7.62" visible="pin" length="middle"/>
<pin name="M1" x="-15.24" y="-10.16" visible="pin" length="middle"/>
<pin name="A1" x="17.78" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="A2" x="17.78" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="B1" x="17.78" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="B2" x="17.78" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="M2" x="-15.24" y="-12.7" visible="pin" length="middle"/>
<pin name="FLT" x="-15.24" y="0" visible="pin" length="middle"/>
<pin name="STEP" x="-15.24" y="-17.78" visible="pin" length="middle"/>
<pin name="DIR" x="-15.24" y="-20.32" visible="pin" length="middle"/>
<wire x1="-10.16" y1="15.24" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="-22.86" width="0.254" layer="94"/>
<wire x1="12.7" y1="-22.86" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="12.7" y="17.78" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<text x="-10.16" y="-25.4" size="1.524" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="L">
<pin name="P$1" x="0" y="7.62" visible="off" length="short" rot="R270"/>
<pin name="P$2" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<wire x1="0.762" y1="-1.524" x2="0" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="-0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.762" y1="4.064" x2="0" y2="4.064" width="0.254" layer="94"/>
<wire x1="0" y1="4.064" x2="0.762" y2="4.064" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="4.064" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.524" width="0.1524" layer="94"/>
<text x="2.54" y="2.54" size="1.524" layer="95">&gt;NAME</text>
<text x="2.54" y="0" size="1.524" layer="96">&gt;VALUE</text>
<wire x1="-0.762" y1="4.064" x2="-0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.762" y1="4.064" x2="0.762" y2="-1.524" width="0.254" layer="94"/>
<rectangle x1="-0.762" y1="-1.524" x2="0.762" y2="4.064" layer="94"/>
</symbol>
<symbol name="R">
<pin name="P$1" x="0" y="7.62" visible="off" length="short" rot="R270"/>
<pin name="P$2" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<wire x1="0.762" y1="-1.524" x2="0" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="-0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.762" y1="4.064" x2="0" y2="4.064" width="0.254" layer="94"/>
<wire x1="0" y1="4.064" x2="0.762" y2="4.064" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="4.064" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.524" width="0.1524" layer="94"/>
<text x="2.54" y="2.54" size="1.524" layer="95">&gt;NAME</text>
<text x="2.54" y="0" size="1.524" layer="96">&gt;VALUE</text>
<wire x1="-0.762" y1="4.064" x2="-0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.762" y1="4.064" x2="0.762" y2="-1.524" width="0.254" layer="94"/>
</symbol>
<symbol name="X4">
<pin name="1" x="-10.16" y="0" visible="pin" length="middle"/>
<pin name="2" x="-10.16" y="-2.54" visible="pin" length="middle"/>
<pin name="3" x="-10.16" y="-5.08" visible="pin" length="middle"/>
<wire x1="-5.08" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<text x="2.54" y="5.08" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<pin name="4" x="-10.16" y="-7.62" visible="pin" length="middle"/>
</symbol>
<symbol name="X2">
<pin name="1" x="-10.16" y="0" visible="pin" length="middle"/>
<pin name="2" x="-10.16" y="-2.54" visible="pin" length="middle"/>
<wire x1="-5.08" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<text x="2.54" y="5.08" size="1.524" layer="95" rot="R180">&gt;NAME</text>
</symbol>
<symbol name="GY-521">
<pin name="VCC" x="-15.24" y="12.7" visible="pin" length="middle"/>
<pin name="GND" x="-15.24" y="10.16" visible="pin" length="middle"/>
<pin name="SDA" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="SCL" x="-15.24" y="7.62" visible="pin" length="middle"/>
<pin name="XDA" x="12.7" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="AD0" x="12.7" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="INT" x="12.7" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="XCL" x="12.7" y="12.7" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="15.24" x2="7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="-10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="7.62" y="17.78" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<text x="-10.16" y="0" size="1.524" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="ESP-32-DEV">
<pin name="VIN" x="-15.24" y="12.7" visible="pin" length="middle"/>
<pin name="GND" x="-15.24" y="7.62" visible="pin" length="middle"/>
<pin name="EN" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="D1/TX0" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="D2" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<pin name="D3/RX0" x="-15.24" y="-7.62" visible="pin" length="middle"/>
<pin name="D4" x="-15.24" y="-10.16" visible="pin" length="middle"/>
<pin name="D5/SPI_SS" x="-15.24" y="-12.7" visible="pin" length="middle"/>
<pin name="D12" x="33.02" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="D13" x="33.02" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="D14" x="33.02" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="D15" x="33.02" y="5.08" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="15.24" x2="27.94" y2="15.24" width="0.254" layer="94"/>
<wire x1="27.94" y1="15.24" x2="27.94" y2="-35.56" width="0.254" layer="94"/>
<wire x1="27.94" y1="-35.56" x2="-10.16" y2="-35.56" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-35.56" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="27.94" y="17.78" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<text x="-10.16" y="-38.1" size="1.524" layer="96">&gt;VALUE</text>
<pin name="3V3" x="-15.24" y="10.16" visible="pin" length="middle"/>
<pin name="RX2/D16" x="33.02" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="TX2/D17" x="33.02" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="SPI_SCK/D18" x="33.02" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="SPI_MISO/D19" x="33.02" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="SDA/D21" x="33.02" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="SCL/D22" x="33.02" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="SPI_MOSI/D23" x="33.02" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="DAC1/D25" x="33.02" y="-20.32" visible="pin" length="middle" rot="R180"/>
<pin name="DAC2/D26" x="33.02" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="D27" x="33.02" y="-25.4" visible="pin" length="middle" rot="R180"/>
<pin name="D32/A4" x="-15.24" y="-20.32" visible="pin" length="middle"/>
<pin name="D33/A5" x="-15.24" y="-22.86" visible="pin" length="middle"/>
<pin name="D34/A6" x="-15.24" y="-25.4" visible="pin" length="middle"/>
<pin name="D35/A7" x="-15.24" y="-27.94" visible="pin" length="middle"/>
<pin name="D36/A0" x="-15.24" y="-30.48" visible="pin" length="middle"/>
<pin name="D39/A3" x="-15.24" y="-33.02" visible="pin" length="middle"/>
</symbol>
<symbol name="X5">
<pin name="1" x="-10.16" y="0" visible="pin" length="middle"/>
<pin name="2" x="-10.16" y="-2.54" visible="pin" length="middle"/>
<pin name="3" x="-10.16" y="-5.08" visible="pin" length="middle"/>
<pin name="4" x="-10.16" y="-7.62" visible="pin" length="middle"/>
<pin name="5" x="-10.16" y="-10.16" visible="pin" length="middle"/>
<wire x1="-5.08" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="-5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-12.7" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<text x="2.54" y="5.08" size="1.524" layer="95" rot="R180">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BAT" prefix="X">
<gates>
<gate name="G$1" symbol="BAT" x="5.08" y="0"/>
</gates>
<devices>
<device name="" package="BAT">
<connects>
<connect gate="G$1" pin="BAT+" pad="P"/>
<connect gate="G$1" pin="BAT-" pad="N"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CPOL" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CPOL" x="0" y="0"/>
</gates>
<devices>
<device name="-C" package="CPOL-C">
<connects>
<connect gate="G$1" pin="+" pad="POS"/>
<connect gate="G$1" pin="-" pad="NEG"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,5" package="CPOL_3,5">
<connects>
<connect gate="G$1" pin="+" pad="P"/>
<connect gate="G$1" pin="-" pad="N"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="D-SUN_SWITCHING" prefix="U">
<gates>
<gate name="G$1" symbol="D-SUN_SWITCHING" x="0" y="0"/>
</gates>
<devices>
<device name="" package="D-SUN_SWITCHING">
<connects>
<connect gate="G$1" pin="GND" pad="NI NI2 NO NO2" route="any"/>
<connect gate="G$1" pin="VIN" pad="PI PI2"/>
<connect gate="G$1" pin="VOUT" pad="PO PO2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DRV8825" prefix="U">
<gates>
<gate name="G$1" symbol="DRV8825" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DRV8825">
<connects>
<connect gate="G$1" pin="A1" pad="P$5"/>
<connect gate="G$1" pin="A2" pad="P$6"/>
<connect gate="G$1" pin="B1" pad="P$4"/>
<connect gate="G$1" pin="B2" pad="P$3"/>
<connect gate="G$1" pin="DIR" pad="P$9"/>
<connect gate="G$1" pin="EN" pad="P$16"/>
<connect gate="G$1" pin="FLT" pad="P$7"/>
<connect gate="G$1" pin="GND" pad="P$2 P$8" route="any"/>
<connect gate="G$1" pin="M0" pad="P$15"/>
<connect gate="G$1" pin="M1" pad="P$14"/>
<connect gate="G$1" pin="M2" pad="P$13"/>
<connect gate="G$1" pin="RST" pad="P$12"/>
<connect gate="G$1" pin="SLP" pad="P$11"/>
<connect gate="G$1" pin="STEP" pad="P$10"/>
<connect gate="G$1" pin="VMOT" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L" prefix="L">
<gates>
<gate name="G$1" symbol="L" x="0" y="-2.54"/>
</gates>
<devices>
<device name="_NEO" package="NEOSID_SD75">
<connects>
<connect gate="G$1" pin="P$1" pad="N"/>
<connect gate="G$1" pin="P$2" pad="P"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R" x="0" y="2.54"/>
</gates>
<devices>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="12" package="R_12">
<connects>
<connect gate="G$1" pin="P$1" pad="N"/>
<connect gate="G$1" pin="P$2" pad="P"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="X4" prefix="X">
<gates>
<gate name="G$1" symbol="X4" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="X4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="X2" prefix="X">
<gates>
<gate name="G$1" symbol="X2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="X2">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SLDR_JMP" package="SOLDER_JUMP">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GY-521" prefix="U">
<gates>
<gate name="G$1" symbol="GY-521" x="0" y="-10.16"/>
</gates>
<devices>
<device name="" package="GY-521">
<connects>
<connect gate="G$1" pin="AD0" pad="P$2"/>
<connect gate="G$1" pin="GND" pad="P$7"/>
<connect gate="G$1" pin="INT" pad="P$1"/>
<connect gate="G$1" pin="SCL" pad="P$6"/>
<connect gate="G$1" pin="SDA" pad="P$5"/>
<connect gate="G$1" pin="VCC" pad="P$8"/>
<connect gate="G$1" pin="XCL" pad="P$4"/>
<connect gate="G$1" pin="XDA" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ESP-32-DEV" prefix="U">
<gates>
<gate name="G$1" symbol="ESP-32-DEV" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP-32-DEV">
<connects>
<connect gate="G$1" pin="3V3" pad="P$15"/>
<connect gate="G$1" pin="D1/TX0" pad="P$3"/>
<connect gate="G$1" pin="D12" pad="P$19"/>
<connect gate="G$1" pin="D13" pad="P$18"/>
<connect gate="G$1" pin="D14" pad="P$20"/>
<connect gate="G$1" pin="D15" pad="P$13"/>
<connect gate="G$1" pin="D2" pad="P$12"/>
<connect gate="G$1" pin="D27" pad="P$21"/>
<connect gate="G$1" pin="D3/RX0" pad="P$4"/>
<connect gate="G$1" pin="D32/A4" pad="P$25"/>
<connect gate="G$1" pin="D33/A5" pad="P$24"/>
<connect gate="G$1" pin="D34/A6" pad="P$27"/>
<connect gate="G$1" pin="D35/A7" pad="P$26"/>
<connect gate="G$1" pin="D36/A0" pad="P$29"/>
<connect gate="G$1" pin="D39/A3" pad="P$28"/>
<connect gate="G$1" pin="D4" pad="P$11"/>
<connect gate="G$1" pin="D5/SPI_SS" pad="P$8"/>
<connect gate="G$1" pin="DAC1/D25" pad="P$23"/>
<connect gate="G$1" pin="DAC2/D26" pad="P$22"/>
<connect gate="G$1" pin="EN" pad="P$30"/>
<connect gate="G$1" pin="GND" pad="P$14 P$17"/>
<connect gate="G$1" pin="RX2/D16" pad="P$10"/>
<connect gate="G$1" pin="SCL/D22" pad="P$2"/>
<connect gate="G$1" pin="SDA/D21" pad="P$5"/>
<connect gate="G$1" pin="SPI_MISO/D19" pad="P$6"/>
<connect gate="G$1" pin="SPI_MOSI/D23" pad="P$1"/>
<connect gate="G$1" pin="SPI_SCK/D18" pad="P$7"/>
<connect gate="G$1" pin="TX2/D17" pad="P$9"/>
<connect gate="G$1" pin="VIN" pad="P$16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="X5" prefix="X">
<gates>
<gate name="G$1" symbol="X5" x="5.08" y="-7.62"/>
</gates>
<devices>
<device name="BIGOUT" package="X5-BIGOUT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="X5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="draradech" deviceset="BAT" device=""/>
<part name="C1" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="C2" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="C3" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="C4" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="C5" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="U1" library="draradech" deviceset="D-SUN_SWITCHING" device=""/>
<part name="U2" library="draradech" deviceset="DRV8825" device=""/>
<part name="U3" library="draradech" deviceset="DRV8825" device=""/>
<part name="L1" library="draradech" deviceset="L" device="_NEO" value="1m"/>
<part name="L2" library="draradech" deviceset="L" device="_NEO" value="1m"/>
<part name="L3" library="draradech" deviceset="L" device="_NEO" value="1m"/>
<part name="R4" library="draradech" deviceset="R" device="12" value="27k"/>
<part name="R5" library="draradech" deviceset="R" device="12" value="4k7"/>
<part name="X2" library="draradech" deviceset="X4" device=""/>
<part name="X3" library="draradech" deviceset="X4" device=""/>
<part name="X4" library="draradech" deviceset="X4" device=""/>
<part name="X5" library="draradech" deviceset="X4" device=""/>
<part name="X6" library="draradech" deviceset="X4" device=""/>
<part name="X7" library="draradech" deviceset="X4" device=""/>
<part name="X8" library="draradech" deviceset="X2" device=""/>
<part name="X9" library="draradech" deviceset="X2" device=""/>
<part name="X10" library="draradech" deviceset="X2" device=""/>
<part name="X11" library="draradech" deviceset="X2" device=""/>
<part name="X12" library="draradech" deviceset="X2" device=""/>
<part name="X13" library="draradech" deviceset="X2" device=""/>
<part name="U5" library="draradech" deviceset="GY-521" device=""/>
<part name="C6" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="C7" library="draradech" deviceset="CPOL" device="3,5" value="220µ"/>
<part name="U4" library="draradech" deviceset="ESP-32-DEV" device=""/>
<part name="R1" library="draradech" deviceset="R" device="12" value="150"/>
<part name="R2" library="draradech" deviceset="R" device="12" value="82"/>
<part name="R3" library="draradech" deviceset="R" device="12" value="39"/>
<part name="R6" library="draradech" deviceset="R" device="12" value="3k3"/>
<part name="R7" library="draradech" deviceset="R" device="12" value="6k8"/>
<part name="R8" library="draradech" deviceset="R" device="12" value="3k3"/>
<part name="R9" library="draradech" deviceset="R" device="12" value="6k8"/>
<part name="R10" library="draradech" deviceset="R" device="12" value="3k3"/>
<part name="R11" library="draradech" deviceset="R" device="12" value="6k8"/>
<part name="X14" library="draradech" deviceset="X2" device="" value="X2"/>
<part name="X15" library="draradech" deviceset="X2" device=""/>
<part name="X16" library="draradech" deviceset="X5" device=""/>
<part name="X17" library="draradech" deviceset="X5" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="G$1" x="20.32" y="142.24"/>
<instance part="C1" gate="G$1" x="198.12" y="177.8" rot="R180"/>
<instance part="C2" gate="G$1" x="198.12" y="121.92" rot="R180"/>
<instance part="C3" gate="G$1" x="233.68" y="66.04" rot="R180"/>
<instance part="C4" gate="G$1" x="233.68" y="40.64" rot="R180"/>
<instance part="C5" gate="G$1" x="233.68" y="15.24" rot="R180"/>
<instance part="U1" gate="G$1" x="58.42" y="139.7"/>
<instance part="U2" gate="G$1" x="223.52" y="160.02"/>
<instance part="U3" gate="G$1" x="223.52" y="104.14"/>
<instance part="L1" gate="G$1" x="220.98" y="68.58" rot="R270"/>
<instance part="L2" gate="G$1" x="220.98" y="43.18" rot="R270"/>
<instance part="L3" gate="G$1" x="220.98" y="17.78" rot="R270"/>
<instance part="R4" gate="G$1" x="66.04" y="99.06"/>
<instance part="R5" gate="G$1" x="66.04" y="81.28"/>
<instance part="X2" gate="G$1" x="162.56" y="38.1"/>
<instance part="X3" gate="G$1" x="264.16" y="68.58"/>
<instance part="X4" gate="G$1" x="264.16" y="43.18"/>
<instance part="X5" gate="G$1" x="264.16" y="17.78"/>
<instance part="X6" gate="G$1" x="264.16" y="165.1"/>
<instance part="X7" gate="G$1" x="264.16" y="109.22"/>
<instance part="X8" gate="G$1" x="147.32" y="167.64" rot="R180"/>
<instance part="X9" gate="G$1" x="147.32" y="154.94" rot="R180"/>
<instance part="X10" gate="G$1" x="147.32" y="142.24" rot="R180"/>
<instance part="X11" gate="G$1" x="147.32" y="111.76" rot="R180"/>
<instance part="X12" gate="G$1" x="147.32" y="99.06" rot="R180"/>
<instance part="X13" gate="G$1" x="147.32" y="86.36" rot="R180"/>
<instance part="U5" gate="G$1" x="152.4" y="45.72"/>
<instance part="C6" gate="G$1" x="-12.7" y="38.1" rot="R180"/>
<instance part="C7" gate="G$1" x="-22.86" y="38.1" rot="R180"/>
<instance part="U4" gate="G$1" x="45.72" y="45.72"/>
<instance part="R1" gate="G$1" x="127" y="22.86" rot="R180"/>
<instance part="R2" gate="G$1" x="134.62" y="22.86" rot="R180"/>
<instance part="R3" gate="G$1" x="142.24" y="22.86" rot="R180"/>
<instance part="R6" gate="G$1" x="243.84" y="63.5" rot="R270"/>
<instance part="R7" gate="G$1" x="243.84" y="55.88" rot="R270"/>
<instance part="R8" gate="G$1" x="243.84" y="38.1" rot="R270"/>
<instance part="R9" gate="G$1" x="243.84" y="30.48" rot="R270"/>
<instance part="R10" gate="G$1" x="243.84" y="12.7" rot="R270"/>
<instance part="R11" gate="G$1" x="243.84" y="5.08" rot="R270"/>
<instance part="X14" gate="G$1" x="58.42" y="116.84" rot="R90"/>
<instance part="X15" gate="G$1" x="91.44" y="106.68"/>
<instance part="X16" gate="G$1" x="10.16" y="33.02" rot="R180"/>
<instance part="X17" gate="G$1" x="99.06" y="27.94"/>
</instances>
<busses>
</busses>
<nets>
<net name="VBAT" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="BAT+"/>
<pinref part="U1" gate="G$1" pin="VIN"/>
<wire x1="27.94" y1="142.24" x2="35.56" y2="142.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="142.24" x2="43.18" y2="142.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="142.24" x2="35.56" y2="152.4" width="0.1524" layer="91"/>
<wire x1="35.56" y1="152.4" x2="81.28" y2="152.4" width="0.1524" layer="91"/>
<junction x="35.56" y="142.24"/>
<label x="81.28" y="152.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VMOT"/>
<wire x1="208.28" y1="172.72" x2="208.28" y2="182.88" width="0.1524" layer="91"/>
<wire x1="208.28" y1="182.88" x2="198.12" y2="182.88" width="0.1524" layer="91"/>
<label x="187.96" y="182.88" size="1.778" layer="95"/>
<pinref part="C1" gate="G$1" pin="+"/>
<wire x1="198.12" y1="182.88" x2="187.96" y2="182.88" width="0.1524" layer="91"/>
<wire x1="198.12" y1="180.34" x2="198.12" y2="182.88" width="0.1524" layer="91"/>
<junction x="198.12" y="182.88"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="VMOT"/>
<wire x1="208.28" y1="116.84" x2="205.74" y2="116.84" width="0.1524" layer="91"/>
<wire x1="205.74" y1="116.84" x2="205.74" y2="127" width="0.1524" layer="91"/>
<wire x1="205.74" y1="127" x2="198.12" y2="127" width="0.1524" layer="91"/>
<label x="187.96" y="127" size="1.778" layer="95"/>
<pinref part="C2" gate="G$1" pin="+"/>
<wire x1="198.12" y1="127" x2="187.96" y2="127" width="0.1524" layer="91"/>
<wire x1="198.12" y1="124.46" x2="198.12" y2="127" width="0.1524" layer="91"/>
<junction x="198.12" y="127"/>
</segment>
<segment>
<pinref part="X14" gate="G$1" pin="1"/>
<wire x1="58.42" y1="106.68" x2="53.34" y2="106.68" width="0.1524" layer="91"/>
<label x="53.34" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="BAT-"/>
<wire x1="27.94" y1="139.7" x2="35.56" y2="139.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="139.7" x2="35.56" y2="124.46" width="0.1524" layer="91"/>
<wire x1="35.56" y1="124.46" x2="58.42" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="124.46" x2="81.28" y2="124.46" width="0.1524" layer="91"/>
<wire x1="58.42" y1="129.54" x2="58.42" y2="124.46" width="0.1524" layer="91"/>
<junction x="58.42" y="124.46"/>
<label x="81.28" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="208.28" y1="170.18" x2="198.12" y2="170.18" width="0.1524" layer="91"/>
<label x="187.96" y="170.18" size="1.778" layer="95"/>
<pinref part="C1" gate="G$1" pin="-"/>
<wire x1="198.12" y1="170.18" x2="187.96" y2="170.18" width="0.1524" layer="91"/>
<wire x1="198.12" y1="172.72" x2="198.12" y2="170.18" width="0.1524" layer="91"/>
<junction x="198.12" y="170.18"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="208.28" y1="114.3" x2="198.12" y2="114.3" width="0.1524" layer="91"/>
<label x="187.96" y="114.3" size="1.778" layer="95"/>
<pinref part="C2" gate="G$1" pin="-"/>
<wire x1="198.12" y1="114.3" x2="187.96" y2="114.3" width="0.1524" layer="91"/>
<wire x1="198.12" y1="116.84" x2="198.12" y2="114.3" width="0.1524" layer="91"/>
<junction x="198.12" y="114.3"/>
</segment>
<segment>
<label x="-22.86" y="22.86" size="1.778" layer="95"/>
<wire x1="-22.86" y1="22.86" x2="-15.24" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="22.86" x2="-12.7" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="22.86" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="30.48" y1="53.34" x2="-10.16" y2="53.34" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="-"/>
<wire x1="-10.16" y1="53.34" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="33.02" x2="-12.7" y2="22.86" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="-"/>
<wire x1="-22.86" y1="33.02" x2="-22.86" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="30.48" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="30.48" x2="-15.24" y2="22.86" width="0.1524" layer="91"/>
<junction x="-15.24" y="22.86"/>
<junction x="-12.7" y="22.86"/>
<pinref part="U4" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="X3" gate="G$1" pin="4"/>
<pinref part="C3" gate="G$1" pin="-"/>
<wire x1="254" y1="60.96" x2="251.46" y2="60.96" width="0.1524" layer="91"/>
<wire x1="251.46" y1="60.96" x2="233.68" y2="60.96" width="0.1524" layer="91"/>
<wire x1="233.68" y1="60.96" x2="208.28" y2="60.96" width="0.1524" layer="91"/>
<label x="208.28" y="60.96" size="1.778" layer="95"/>
<pinref part="R7" gate="G$1" pin="P$1"/>
<wire x1="251.46" y1="55.88" x2="251.46" y2="60.96" width="0.1524" layer="91"/>
<junction x="251.46" y="60.96"/>
<junction x="233.68" y="60.96"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="4"/>
<pinref part="C4" gate="G$1" pin="-"/>
<wire x1="254" y1="35.56" x2="251.46" y2="35.56" width="0.1524" layer="91"/>
<wire x1="251.46" y1="35.56" x2="233.68" y2="35.56" width="0.1524" layer="91"/>
<wire x1="233.68" y1="35.56" x2="208.28" y2="35.56" width="0.1524" layer="91"/>
<label x="208.28" y="35.56" size="1.778" layer="95"/>
<pinref part="R9" gate="G$1" pin="P$1"/>
<wire x1="251.46" y1="30.48" x2="251.46" y2="35.56" width="0.1524" layer="91"/>
<junction x="251.46" y="35.56"/>
<junction x="233.68" y="35.56"/>
</segment>
<segment>
<pinref part="X5" gate="G$1" pin="4"/>
<pinref part="C5" gate="G$1" pin="-"/>
<wire x1="254" y1="10.16" x2="251.46" y2="10.16" width="0.1524" layer="91"/>
<wire x1="251.46" y1="10.16" x2="233.68" y2="10.16" width="0.1524" layer="91"/>
<wire x1="233.68" y1="10.16" x2="208.28" y2="10.16" width="0.1524" layer="91"/>
<label x="208.28" y="10.16" size="1.778" layer="95"/>
<pinref part="R11" gate="G$1" pin="P$1"/>
<wire x1="251.46" y1="5.08" x2="251.46" y2="10.16" width="0.1524" layer="91"/>
<junction x="251.46" y="10.16"/>
<junction x="233.68" y="10.16"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="P$2"/>
<wire x1="66.04" y1="76.2" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<label x="53.34" y="76.2" size="1.778" layer="95"/>
<pinref part="X15" gate="G$1" pin="2"/>
<wire x1="81.28" y1="104.14" x2="81.28" y2="76.2" width="0.1524" layer="91"/>
<wire x1="81.28" y1="76.2" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
<junction x="66.04" y="76.2"/>
</segment>
<segment>
<wire x1="137.16" y1="55.88" x2="127" y2="55.88" width="0.1524" layer="91"/>
<label x="127" y="55.88" size="1.778" layer="95"/>
<pinref part="U5" gate="G$1" pin="GND"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VOUT"/>
<wire x1="73.66" y1="142.24" x2="81.28" y2="142.24" width="0.1524" layer="91"/>
<label x="81.28" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="30.48" y1="58.42" x2="-10.16" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="58.42" x2="-10.16" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="68.58" x2="-15.24" y2="68.58" width="0.1524" layer="91"/>
<label x="-22.86" y="68.58" size="1.778" layer="95"/>
<wire x1="-15.24" y1="68.58" x2="-22.86" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="68.58" x2="-15.24" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="43.18" x2="-22.86" y2="43.18" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="+"/>
<wire x1="-22.86" y1="43.18" x2="-22.86" y2="40.64" width="0.1524" layer="91"/>
<junction x="-15.24" y="68.58"/>
<pinref part="U4" gate="G$1" pin="VIN"/>
</segment>
<segment>
<pinref part="L1" gate="G$1" pin="P$2"/>
<wire x1="215.9" y1="68.58" x2="208.28" y2="68.58" width="0.1524" layer="91"/>
<label x="208.28" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="L2" gate="G$1" pin="P$2"/>
<wire x1="215.9" y1="43.18" x2="208.28" y2="43.18" width="0.1524" layer="91"/>
<label x="208.28" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="L3" gate="G$1" pin="P$2"/>
<wire x1="215.9" y1="17.78" x2="208.28" y2="17.78" width="0.1524" layer="91"/>
<label x="208.28" y="17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="B1"/>
<pinref part="X6" gate="G$1" pin="3"/>
<wire x1="241.3" y1="160.02" x2="254" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="B2"/>
<pinref part="X6" gate="G$1" pin="4"/>
<wire x1="241.3" y1="157.48" x2="254" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="B1"/>
<pinref part="X7" gate="G$1" pin="3"/>
<wire x1="241.3" y1="104.14" x2="254" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="B2"/>
<pinref part="X7" gate="G$1" pin="4"/>
<wire x1="241.3" y1="101.6" x2="254" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<wire x1="144.78" y1="177.8" x2="162.56" y2="177.8" width="0.1524" layer="91"/>
<wire x1="162.56" y1="177.8" x2="162.56" y2="170.18" width="0.1524" layer="91"/>
<wire x1="162.56" y1="170.18" x2="162.56" y2="165.1" width="0.1524" layer="91"/>
<wire x1="162.56" y1="165.1" x2="162.56" y2="157.48" width="0.1524" layer="91"/>
<wire x1="162.56" y1="157.48" x2="162.56" y2="144.78" width="0.1524" layer="91"/>
<label x="144.78" y="177.8" size="1.778" layer="95"/>
<pinref part="X10" gate="G$1" pin="2"/>
<wire x1="157.48" y1="144.78" x2="162.56" y2="144.78" width="0.1524" layer="91"/>
<pinref part="X9" gate="G$1" pin="2"/>
<wire x1="157.48" y1="157.48" x2="162.56" y2="157.48" width="0.1524" layer="91"/>
<pinref part="X8" gate="G$1" pin="2"/>
<wire x1="157.48" y1="170.18" x2="162.56" y2="170.18" width="0.1524" layer="91"/>
<junction x="162.56" y="170.18"/>
<junction x="162.56" y="157.48"/>
<pinref part="U2" gate="G$1" pin="RST"/>
<wire x1="208.28" y1="165.1" x2="162.56" y2="165.1" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="SLP"/>
<wire x1="208.28" y1="157.48" x2="162.56" y2="157.48" width="0.1524" layer="91"/>
<junction x="162.56" y="165.1"/>
</segment>
<segment>
<pinref part="X13" gate="G$1" pin="2"/>
<wire x1="162.56" y1="88.9" x2="157.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="162.56" y1="121.92" x2="144.78" y2="121.92" width="0.1524" layer="91"/>
<wire x1="162.56" y1="121.92" x2="162.56" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X11" gate="G$1" pin="2"/>
<wire x1="157.48" y1="114.3" x2="162.56" y2="114.3" width="0.1524" layer="91"/>
<junction x="162.56" y="114.3"/>
<wire x1="162.56" y1="114.3" x2="162.56" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="RST"/>
<wire x1="208.28" y1="109.22" x2="162.56" y2="109.22" width="0.1524" layer="91"/>
<junction x="162.56" y="109.22"/>
<wire x1="162.56" y1="109.22" x2="162.56" y2="101.6" width="0.1524" layer="91"/>
<wire x1="162.56" y1="101.6" x2="162.56" y2="88.9" width="0.1524" layer="91"/>
<junction x="162.56" y="101.6"/>
<pinref part="U3" gate="G$1" pin="SLP"/>
<wire x1="208.28" y1="101.6" x2="162.56" y2="101.6" width="0.1524" layer="91"/>
<pinref part="X12" gate="G$1" pin="2"/>
<wire x1="157.48" y1="101.6" x2="162.56" y2="101.6" width="0.1524" layer="91"/>
<label x="144.78" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="30.48" y1="55.88" x2="-12.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="55.88" x2="-12.7" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="66.04" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<label x="-22.86" y="66.04" size="1.778" layer="95"/>
<junction x="-12.7" y="55.88"/>
<pinref part="C6" gate="G$1" pin="+"/>
<wire x1="-12.7" y1="55.88" x2="-12.7" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="3V3"/>
</segment>
<segment>
<wire x1="137.16" y1="58.42" x2="127" y2="58.42" width="0.1524" layer="91"/>
<label x="127" y="58.42" size="1.778" layer="95"/>
<pinref part="U5" gate="G$1" pin="VCC"/>
</segment>
<segment>
<pinref part="X2" gate="G$1" pin="1"/>
<wire x1="152.4" y1="38.1" x2="111.76" y2="38.1" width="0.1524" layer="91"/>
<label x="111.76" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="1"/>
<wire x1="157.48" y1="167.64" x2="170.18" y2="167.64" width="0.1524" layer="91"/>
<wire x1="170.18" y1="167.64" x2="170.18" y2="152.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="M0"/>
<wire x1="170.18" y1="152.4" x2="208.28" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X9" gate="G$1" pin="1"/>
<wire x1="157.48" y1="154.94" x2="167.64" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="M1"/>
<wire x1="167.64" y1="154.94" x2="167.64" y2="149.86" width="0.1524" layer="91"/>
<wire x1="167.64" y1="149.86" x2="208.28" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="1"/>
<wire x1="157.48" y1="142.24" x2="167.64" y2="142.24" width="0.1524" layer="91"/>
<wire x1="167.64" y1="142.24" x2="167.64" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="M2"/>
<wire x1="167.64" y1="147.32" x2="208.28" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X11" gate="G$1" pin="1"/>
<wire x1="157.48" y1="111.76" x2="170.18" y2="111.76" width="0.1524" layer="91"/>
<wire x1="170.18" y1="111.76" x2="170.18" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="M0"/>
<wire x1="170.18" y1="96.52" x2="208.28" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X12" gate="G$1" pin="1"/>
<wire x1="157.48" y1="99.06" x2="167.64" y2="99.06" width="0.1524" layer="91"/>
<wire x1="167.64" y1="99.06" x2="167.64" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="M1"/>
<wire x1="167.64" y1="93.98" x2="208.28" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X13" gate="G$1" pin="1"/>
<wire x1="157.48" y1="86.36" x2="167.64" y2="86.36" width="0.1524" layer="91"/>
<wire x1="167.64" y1="86.36" x2="167.64" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="M2"/>
<wire x1="167.64" y1="91.44" x2="208.28" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="M1_STEP" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="STEP"/>
<wire x1="208.28" y1="142.24" x2="187.96" y2="142.24" width="0.1524" layer="91"/>
<label x="187.96" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="78.74" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<label x="88.9" y="55.88" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D13"/>
</segment>
</net>
<net name="M1_DIR" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="DIR"/>
<wire x1="208.28" y1="139.7" x2="187.96" y2="139.7" width="0.1524" layer="91"/>
<label x="187.96" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="78.74" y1="53.34" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
<label x="88.9" y="53.34" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D14"/>
</segment>
</net>
<net name="M2_STEP" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="STEP"/>
<wire x1="208.28" y1="86.36" x2="187.96" y2="86.36" width="0.1524" layer="91"/>
<label x="187.96" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="78.74" y1="50.8" x2="88.9" y2="50.8" width="0.1524" layer="91"/>
<label x="88.9" y="50.8" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D15"/>
</segment>
</net>
<net name="M2_DIR" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="DIR"/>
<wire x1="208.28" y1="83.82" x2="187.96" y2="83.82" width="0.1524" layer="91"/>
<label x="187.96" y="83.82" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="78.74" y1="48.26" x2="88.9" y2="48.26" width="0.1524" layer="91"/>
<label x="88.9" y="48.26" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="RX2/D16"/>
</segment>
</net>
<net name="M_EN" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="EN"/>
<wire x1="208.28" y1="106.68" x2="187.96" y2="106.68" width="0.1524" layer="91"/>
<label x="187.96" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="EN"/>
<wire x1="208.28" y1="162.56" x2="187.96" y2="162.56" width="0.1524" layer="91"/>
<label x="187.96" y="162.56" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="78.74" y1="58.42" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<label x="88.9" y="58.42" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D12"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="P$1"/>
<pinref part="C3" gate="G$1" pin="+"/>
<wire x1="228.6" y1="68.58" x2="233.68" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="1"/>
<wire x1="233.68" y1="68.58" x2="254" y2="68.58" width="0.1524" layer="91"/>
<junction x="233.68" y="68.58"/>
</segment>
</net>
<net name="U1_PULSE" class="0">
<segment>
<wire x1="20.32" y1="22.86" x2="30.48" y2="22.86" width="0.1524" layer="91"/>
<label x="17.78" y="22.86" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D33/A5"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="P$2"/>
<pinref part="R7" gate="G$1" pin="P$2"/>
<wire x1="238.76" y1="63.5" x2="238.76" y2="55.88" width="0.1524" layer="91"/>
<wire x1="238.76" y1="55.88" x2="208.28" y2="55.88" width="0.1524" layer="91"/>
<junction x="238.76" y="55.88"/>
<label x="208.28" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="U_TRG" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="2"/>
<wire x1="254" y1="66.04" x2="241.3" y2="66.04" width="0.1524" layer="91"/>
<label x="241.3" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="2"/>
<wire x1="254" y1="40.64" x2="241.3" y2="40.64" width="0.1524" layer="91"/>
<label x="241.3" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X5" gate="G$1" pin="2"/>
<wire x1="254" y1="15.24" x2="241.3" y2="15.24" width="0.1524" layer="91"/>
<label x="241.3" y="15.24" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="30.48" y1="25.4" x2="20.32" y2="25.4" width="0.1524" layer="91"/>
<label x="17.78" y="25.4" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D32/A4"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="1"/>
<pinref part="C4" gate="G$1" pin="+"/>
<wire x1="254" y1="43.18" x2="233.68" y2="43.18" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="P$1"/>
<wire x1="233.68" y1="43.18" x2="228.6" y2="43.18" width="0.1524" layer="91"/>
<junction x="233.68" y="43.18"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="1"/>
<pinref part="C5" gate="G$1" pin="+"/>
<wire x1="254" y1="17.78" x2="233.68" y2="17.78" width="0.1524" layer="91"/>
<pinref part="L3" gate="G$1" pin="P$1"/>
<wire x1="233.68" y1="17.78" x2="228.6" y2="17.78" width="0.1524" layer="91"/>
<junction x="233.68" y="17.78"/>
</segment>
</net>
<net name="U2_PULSE" class="0">
<segment>
<wire x1="20.32" y1="20.32" x2="30.48" y2="20.32" width="0.1524" layer="91"/>
<label x="17.78" y="20.32" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D34/A6"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="P$2"/>
<pinref part="R9" gate="G$1" pin="P$2"/>
<wire x1="238.76" y1="38.1" x2="238.76" y2="30.48" width="0.1524" layer="91"/>
<wire x1="238.76" y1="30.48" x2="208.28" y2="30.48" width="0.1524" layer="91"/>
<junction x="238.76" y="30.48"/>
<label x="208.28" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="U3_PULSE" class="0">
<segment>
<wire x1="20.32" y1="17.78" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
<label x="17.78" y="17.78" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D35/A7"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="P$2"/>
<pinref part="R11" gate="G$1" pin="P$2"/>
<wire x1="238.76" y1="12.7" x2="238.76" y2="5.08" width="0.1524" layer="91"/>
<wire x1="238.76" y1="5.08" x2="208.28" y2="5.08" width="0.1524" layer="91"/>
<junction x="238.76" y="5.08"/>
<label x="208.28" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="VSENS" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="P$2"/>
<pinref part="R5" gate="G$1" pin="P$1"/>
<wire x1="66.04" y1="93.98" x2="66.04" y2="91.44" width="0.1524" layer="91"/>
<wire x1="66.04" y1="91.44" x2="66.04" y2="88.9" width="0.1524" layer="91"/>
<wire x1="66.04" y1="91.44" x2="53.34" y2="91.44" width="0.1524" layer="91"/>
<label x="53.34" y="91.44" size="1.778" layer="95"/>
<junction x="66.04" y="91.44"/>
</segment>
<segment>
<wire x1="20.32" y1="15.24" x2="30.48" y2="15.24" width="0.1524" layer="91"/>
<label x="17.78" y="15.24" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="D36/A0"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<wire x1="137.16" y1="53.34" x2="127" y2="53.34" width="0.1524" layer="91"/>
<label x="127" y="53.34" size="1.778" layer="95"/>
<pinref part="U5" gate="G$1" pin="SCL"/>
</segment>
<segment>
<wire x1="78.74" y1="30.48" x2="88.9" y2="30.48" width="0.1524" layer="91"/>
<label x="88.9" y="30.48" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="SCL/D22"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<wire x1="137.16" y1="50.8" x2="127" y2="50.8" width="0.1524" layer="91"/>
<label x="127" y="50.8" size="1.778" layer="95"/>
<pinref part="U5" gate="G$1" pin="SDA"/>
</segment>
<segment>
<wire x1="78.74" y1="33.02" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<label x="88.9" y="33.02" size="1.778" layer="95"/>
<pinref part="U4" gate="G$1" pin="SDA/D21"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="A1"/>
<wire x1="241.3" y1="165.1" x2="248.92" y2="165.1" width="0.1524" layer="91"/>
<wire x1="248.92" y1="165.1" x2="248.92" y2="162.56" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="2"/>
<wire x1="248.92" y1="162.56" x2="254" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="A2"/>
<wire x1="241.3" y1="162.56" x2="246.38" y2="162.56" width="0.1524" layer="91"/>
<wire x1="246.38" y1="162.56" x2="246.38" y2="167.64" width="0.1524" layer="91"/>
<wire x1="246.38" y1="167.64" x2="251.46" y2="167.64" width="0.1524" layer="91"/>
<wire x1="251.46" y1="167.64" x2="251.46" y2="165.1" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="1"/>
<wire x1="251.46" y1="165.1" x2="254" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="A1"/>
<wire x1="241.3" y1="109.22" x2="248.92" y2="109.22" width="0.1524" layer="91"/>
<wire x1="248.92" y1="109.22" x2="248.92" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="2"/>
<wire x1="248.92" y1="106.68" x2="254" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="A2"/>
<wire x1="241.3" y1="106.68" x2="246.38" y2="106.68" width="0.1524" layer="91"/>
<wire x1="246.38" y1="106.68" x2="246.38" y2="111.76" width="0.1524" layer="91"/>
<wire x1="246.38" y1="111.76" x2="251.46" y2="111.76" width="0.1524" layer="91"/>
<wire x1="251.46" y1="111.76" x2="251.46" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="1"/>
<wire x1="251.46" y1="109.22" x2="254" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="P$2"/>
<wire x1="142.24" y1="27.94" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="4"/>
<wire x1="142.24" y1="30.48" x2="152.4" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="P$2"/>
<wire x1="134.62" y1="27.94" x2="134.62" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="3"/>
<wire x1="134.62" y1="33.02" x2="152.4" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="P$2"/>
<pinref part="X2" gate="G$1" pin="2"/>
<wire x1="127" y1="27.94" x2="127" y2="35.56" width="0.1524" layer="91"/>
<wire x1="127" y1="35.56" x2="152.4" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED_R" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="P$1"/>
<wire x1="127" y1="15.24" x2="111.76" y2="15.24" width="0.1524" layer="91"/>
<label x="111.76" y="15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="TX2/D17"/>
<wire x1="78.74" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<label x="88.9" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_G" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="P$1"/>
<wire x1="134.62" y1="15.24" x2="134.62" y2="12.7" width="0.1524" layer="91"/>
<wire x1="134.62" y1="12.7" x2="111.76" y2="12.7" width="0.1524" layer="91"/>
<label x="111.76" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="SPI_SCK/D18"/>
<wire x1="78.74" y1="43.18" x2="88.9" y2="43.18" width="0.1524" layer="91"/>
<label x="88.9" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_B" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="P$1"/>
<wire x1="142.24" y1="15.24" x2="142.24" y2="10.16" width="0.1524" layer="91"/>
<wire x1="142.24" y1="10.16" x2="111.76" y2="10.16" width="0.1524" layer="91"/>
<label x="111.76" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="SPI_MISO/D19"/>
<wire x1="78.74" y1="40.64" x2="88.9" y2="40.64" width="0.1524" layer="91"/>
<label x="88.9" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="3"/>
<pinref part="R6" gate="G$1" pin="P$1"/>
<wire x1="254" y1="63.5" x2="251.46" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="3"/>
<pinref part="R8" gate="G$1" pin="P$1"/>
<wire x1="254" y1="38.1" x2="251.46" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="3"/>
<pinref part="R10" gate="G$1" pin="P$1"/>
<wire x1="254" y1="12.7" x2="251.46" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="P$1"/>
<pinref part="X14" gate="G$1" pin="2"/>
<wire x1="66.04" y1="106.68" x2="60.96" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X15" gate="G$1" pin="1"/>
<wire x1="66.04" y1="106.68" x2="81.28" y2="106.68" width="0.1524" layer="91"/>
<junction x="66.04" y="106.68"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D5/SPI_SS"/>
<pinref part="X16" gate="G$1" pin="1"/>
<wire x1="20.32" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D4"/>
<pinref part="X16" gate="G$1" pin="2"/>
<wire x1="20.32" y1="35.56" x2="30.48" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D3/RX0"/>
<pinref part="X16" gate="G$1" pin="3"/>
<wire x1="20.32" y1="38.1" x2="30.48" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D2"/>
<pinref part="X16" gate="G$1" pin="4"/>
<wire x1="20.32" y1="40.64" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D1/TX0"/>
<pinref part="X16" gate="G$1" pin="5"/>
<wire x1="20.32" y1="43.18" x2="30.48" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="SPI_MOSI/D23"/>
<pinref part="X17" gate="G$1" pin="1"/>
<wire x1="88.9" y1="27.94" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="DAC1/D25"/>
<pinref part="X17" gate="G$1" pin="2"/>
<wire x1="88.9" y1="25.4" x2="78.74" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="DAC2/D26"/>
<pinref part="X17" gate="G$1" pin="3"/>
<wire x1="88.9" y1="22.86" x2="78.74" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D27"/>
<pinref part="X17" gate="G$1" pin="4"/>
<wire x1="88.9" y1="20.32" x2="78.74" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="D39/A3"/>
<wire x1="30.48" y1="12.7" x2="30.48" y2="5.08" width="0.1524" layer="91"/>
<wire x1="30.48" y1="5.08" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<pinref part="X17" gate="G$1" pin="5"/>
<wire x1="88.9" y1="5.08" x2="88.9" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
