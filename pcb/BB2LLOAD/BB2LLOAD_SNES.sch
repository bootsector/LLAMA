<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="fp8" color="7" fill="1" visible="no" active="yes"/>
<layer number="109" name="fp9" color="7" fill="1" visible="no" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="no" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="113" name="ReferenceLS" color="7" fill="1" visible="no" active="no"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="no" active="no"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="no" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="no" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="no" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="no" active="yes"/>
<layer number="153" name="FabDoc1" color="6" fill="1" visible="no" active="no"/>
<layer number="154" name="FabDoc2" color="2" fill="1" visible="no" active="no"/>
<layer number="155" name="FabDoc3" color="7" fill="15" visible="no" active="no"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="218" name="218bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="219" name="219bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="220" name="220bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="221" name="221bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="222" name="222bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="223" name="223bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="224" name="224bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="Eagle3D_PG1" color="7" fill="1" visible="no" active="no"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="no" active="no"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="no" active="no"/>
<layer number="248" name="Housing" color="7" fill="1" visible="no" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="no" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="nofill" color="7" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94" font="vector">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-subd">
<description>&lt;b&gt;SUB-D Connectors&lt;/b&gt;&lt;p&gt;
Harting&lt;br&gt;
NorComp&lt;br&gt;
&lt;p&gt;
PREFIX :&lt;br&gt;
H = High density&lt;br&gt;
F = Female&lt;br&gt;
M = Male&lt;p&gt;
NUMBER: Number of pins&lt;p&gt;
SUFFIX :&lt;br&gt;
H = Horizontal&lt;br&gt;
V = Vertical &lt;br&gt;
P = Shield pin on housing&lt;br&gt;
B = No mounting holes&lt;br&gt;
S = Pins individually placeable (Single)&lt;br&gt;
D = Direct mounting &lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="F15D">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-12.319" y1="6.9342" x2="-11.811" y2="7.4422" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.684" y1="7.4422" x2="12.192" y2="6.9342" width="0.1524" layer="21" curve="-90"/>
<wire x1="-12.319" y1="1.8542" x2="-12.319" y2="6.9342" width="0.1524" layer="21"/>
<wire x1="-12.954" y1="1.2192" x2="-12.319" y2="1.8542" width="0.1524" layer="21" curve="90"/>
<wire x1="12.192" y1="1.8542" x2="12.192" y2="6.9342" width="0.1524" layer="21"/>
<wire x1="12.192" y1="1.8542" x2="12.827" y2="1.2192" width="0.1524" layer="21" curve="90"/>
<wire x1="-11.811" y1="7.4422" x2="11.684" y2="7.4422" width="0.1524" layer="21"/>
<wire x1="-11.7856" y1="0.508" x2="-11.7856" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-11.7856" y1="0.508" x2="-11.6586" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.6586" y1="-1.905" x2="-11.0236" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-11.6586" y1="-1.905" x2="-11.6586" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.043" y1="-2.54" x2="11.043" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.7856" y1="0.508" x2="11.7856" y2="1.016" width="0.1524" layer="21"/>
<wire x1="11.6586" y1="-1.905" x2="11.6586" y2="0.508" width="0.1524" layer="21"/>
<wire x1="11.6586" y1="0.508" x2="11.7856" y2="0.508" width="0.1524" layer="21"/>
<wire x1="11.0236" y1="-2.54" x2="11.6586" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="-17.8308" y1="-2.7432" x2="-16.4592" y2="-4.1148" width="0" layer="48"/>
<wire x1="-16.4592" y1="-4.1148" x2="-15.0876" y2="-2.7432" width="0" layer="48"/>
<wire x1="-15.0876" y1="-2.7432" x2="-13.716" y2="-4.1148" width="0" layer="48"/>
<wire x1="-13.716" y1="-4.1148" x2="-12.3444" y2="-2.7432" width="0" layer="48"/>
<wire x1="12.3444" y1="-2.7432" x2="13.716" y2="-4.1148" width="0" layer="48"/>
<wire x1="13.716" y1="-4.1148" x2="15.0876" y2="-2.7432" width="0" layer="48"/>
<wire x1="15.0876" y1="-2.7432" x2="16.4592" y2="-4.1148" width="0" layer="48"/>
<wire x1="16.4592" y1="-4.1148" x2="17.8308" y2="-2.7432" width="0" layer="48"/>
<smd name="1" x="-9.6014" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="2" x="-6.858" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="3" x="-4.1146" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="4" x="-1.3718" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="5" x="1.3718" y="-6.0446" dx="1.7" dy="3.5" layer="1"/>
<smd name="9" x="-8.2296" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="10" x="-5.4864" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="11" x="-2.7432" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="12" x="0" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="6" x="4.1146" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="7" x="6.858" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="8" x="9.6014" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="13" x="2.7432" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="14" x="5.4864" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="15" x="8.2296" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<text x="-10.2616" y="-10.16" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1016" y="-10.16" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-10.0348" y="-2.1786" size="1.27" layer="21" ratio="10">1</text>
<text x="12.8016" y="-2.54" size="1.27" layer="48">Board</text>
<text x="9.1998" y="-2.1786" size="1.27" layer="21" ratio="10">8</text>
<text x="-7.6916" y="-2.1966" size="1.27" layer="22" ratio="10" rot="MR0">9</text>
<text x="8.6566" y="-2.1966" size="1.27" layer="22" ratio="10" rot="MR0">15</text>
<text x="-11.7348" y="4.5974" size="1.27" layer="51" ratio="10">F15D</text>
<text x="-17.8816" y="-2.54" size="1.27" layer="48">Board </text>
<rectangle x1="-19.685" y1="0.8112" x2="19.558" y2="1.3192" layer="21"/>
<rectangle x1="-10.2012" y1="-6.56" x2="-9.0012" y2="-4.06" layer="51"/>
<rectangle x1="-8.8296" y1="-6.56" x2="-7.6296" y2="-4.06" layer="52"/>
<rectangle x1="-6.0864" y1="-6.56" x2="-4.8864" y2="-4.06" layer="52"/>
<rectangle x1="-3.3432" y1="-6.56" x2="-2.1432" y2="-4.06" layer="52"/>
<rectangle x1="-7.458" y1="-6.56" x2="-6.258" y2="-4.06" layer="51"/>
<rectangle x1="-4.7148" y1="-6.56" x2="-3.5148" y2="-4.06" layer="51"/>
<rectangle x1="-1.9716" y1="-6.56" x2="-0.7716" y2="-4.06" layer="51"/>
<rectangle x1="0.7716" y1="-6.56" x2="1.9716" y2="-4.06" layer="51"/>
<rectangle x1="-0.6" y1="-6.56" x2="0.6" y2="-4.06" layer="52"/>
<rectangle x1="2.1432" y1="-6.56" x2="3.3432" y2="-4.06" layer="52"/>
<rectangle x1="4.8864" y1="-6.56" x2="6.0864" y2="-4.06" layer="52"/>
<rectangle x1="7.6296" y1="-6.56" x2="8.8296" y2="-4.06" layer="52"/>
<rectangle x1="3.5148" y1="-6.56" x2="4.7148" y2="-4.06" layer="51"/>
<rectangle x1="6.258" y1="-6.56" x2="7.458" y2="-4.06" layer="51"/>
<rectangle x1="9.0012" y1="-6.56" x2="10.2012" y2="-4.06" layer="51"/>
<rectangle x1="-10.6" y1="-4.1" x2="10.6" y2="-2.5" layer="21"/>
</package>
<package name="F15H">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-11.811" y1="17.907" x2="-11.557" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="17.399" x2="-11.811" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.684" y1="17.907" x2="12.192" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.938" y1="11.684" x2="11.811" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="7.62" x2="-14.605" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="7.62" x2="-19.685" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="7.62" x2="-19.685" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="10.668" x2="-19.685" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="11.176" x2="-19.685" y2="11.684" width="0.1524" layer="21"/>
<wire x1="19.558" y1="11.684" x2="19.558" y2="11.176" width="0.1524" layer="21"/>
<wire x1="19.558" y1="11.176" x2="19.558" y2="10.668" width="0.1524" layer="21"/>
<wire x1="19.558" y1="10.668" x2="19.558" y2="7.62" width="0.1524" layer="21"/>
<wire x1="19.558" y1="7.62" x2="19.558" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="11.176" x2="-17.145" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="11.176" x2="-14.605" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="10.668" x2="-14.605" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="10.668" x2="-14.478" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-14.478" y1="8.255" x2="-13.843" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.605" y1="7.62" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.716" y1="7.62" x2="-13.462" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-14.478" y1="8.255" x2="-14.478" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="7.62" x2="-13.462" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="7.62" x2="13.335" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="6.858" x2="13.335" y2="6.858" width="0.1524" layer="21"/>
<wire x1="13.335" y1="7.62" x2="13.335" y2="6.858" width="0.1524" layer="21"/>
<wire x1="13.335" y1="7.62" x2="13.589" y2="7.62" width="0.1524" layer="21"/>
<wire x1="13.589" y1="7.62" x2="14.478" y2="7.62" width="0.1524" layer="21"/>
<wire x1="17.018" y1="11.176" x2="19.558" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="11.176" x2="14.478" y2="11.176" width="0.1524" layer="21"/>
<wire x1="14.478" y1="11.176" x2="17.018" y2="11.176" width="0.1524" layer="21"/>
<wire x1="14.478" y1="10.668" x2="14.478" y2="11.176" width="0.1524" layer="21"/>
<wire x1="14.351" y1="8.255" x2="14.351" y2="10.668" width="0.1524" layer="21"/>
<wire x1="14.351" y1="10.668" x2="14.478" y2="10.668" width="0.1524" layer="21"/>
<wire x1="13.716" y1="7.62" x2="14.351" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-19.05" y1="-3.175" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-19.685" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-14.224" y1="-3.175" x2="-19.05" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-14.224" y1="-3.175" x2="-13.716" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-13.716" y1="-2.667" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="13.589" y1="-2.667" x2="13.589" y2="7.62" width="0.1524" layer="21"/>
<wire x1="13.589" y1="-2.667" x2="14.097" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="14.097" y1="-3.175" x2="19.05" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-3.175" x2="19.558" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="19.558" y1="-2.667" x2="19.558" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-1.3716" y1="-1.143" x2="-1.3716" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-6.858" y1="-1.143" x2="-6.858" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-9.6012" y1="-1.143" x2="-9.6012" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-8.2296" y1="1.397" x2="-8.2296" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-5.4864" y1="1.397" x2="-5.4864" y2="2.413" width="0.8128" layer="51"/>
<wire x1="0" y1="1.397" x2="0" y2="2.413" width="0.8128" layer="51"/>
<wire x1="4.1148" y1="-1.143" x2="4.1148" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="8.2296" y1="1.397" x2="8.2296" y2="2.413" width="0.8128" layer="51"/>
<wire x1="9.6012" y1="-1.143" x2="9.6012" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="5.4864" y1="1.397" x2="5.4864" y2="2.413" width="0.8128" layer="51"/>
<wire x1="6.858" y1="-1.143" x2="6.858" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="2.7432" y1="1.397" x2="2.7432" y2="2.413" width="0.8128" layer="51"/>
<wire x1="1.3716" y1="-1.143" x2="1.3716" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-2.7432" y1="1.397" x2="-2.7432" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-4.1148" y1="-1.143" x2="-4.1148" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="14.478" y1="7.62" x2="19.558" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="11.684" x2="-11.938" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="12.319" x2="-12.319" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-12.954" y1="11.684" x2="-12.319" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="11.811" y1="11.684" x2="19.558" y2="11.684" width="0.1524" layer="21"/>
<wire x1="12.192" y1="12.319" x2="12.192" y2="17.399" width="0.1524" layer="21"/>
<wire x1="12.192" y1="12.319" x2="12.827" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="-11.557" y1="17.907" x2="11.43" y2="17.907" width="0.1524" layer="21"/>
<wire x1="11.43" y1="17.907" x2="11.684" y2="17.907" width="0.1524" layer="21"/>
<circle x="-16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="-16.6624" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-16.6624" y="0" radius="2.667" width="0" layer="43"/>
<circle x="16.6624" y="0" radius="2.667" width="0" layer="42"/>
<circle x="16.6624" y="0" radius="2.667" width="0" layer="43"/>
<circle x="16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-9.6012" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-6.858" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-4.1148" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.3716" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="1.3716" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="4.1148" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="6.858" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="9.6012" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-8.2296" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-5.4864" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="-2.7432" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="2.7432" y="1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="5.4864" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="8.2296" y="1.27" drill="1.016" shape="octagon"/>
<text x="-19.431" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.382" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-11.811" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="11.049" y="-1.905" size="1.27" layer="21" ratio="10">8</text>
<text x="-11.811" y="0.635" size="1.27" layer="21" ratio="10">9</text>
<text x="11.049" y="0.635" size="1.27" layer="21" ratio="10">15</text>
<text x="19.05" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">2,54</text>
<text x="-11.811" y="8.509" size="1.27" layer="21" ratio="10">F15</text>
<rectangle x1="-13.462" y1="6.858" x2="13.335" y2="7.62" layer="21"/>
<rectangle x1="-19.685" y1="11.176" x2="19.558" y2="11.684" layer="21"/>
<rectangle x1="-10.0076" y1="-0.381" x2="-9.1948" y2="6.858" layer="21"/>
<rectangle x1="-8.636" y1="2.159" x2="-7.8232" y2="6.858" layer="21"/>
<rectangle x1="-7.2644" y1="-0.381" x2="-6.4516" y2="6.858" layer="21"/>
<rectangle x1="-5.8928" y1="2.159" x2="-5.08" y2="6.858" layer="21"/>
<rectangle x1="-4.5212" y1="-0.381" x2="-3.7084" y2="6.858" layer="21"/>
<rectangle x1="-3.1496" y1="2.159" x2="-2.3368" y2="6.858" layer="21"/>
<rectangle x1="-1.778" y1="-0.381" x2="-0.9652" y2="6.858" layer="21"/>
<rectangle x1="-0.4064" y1="2.159" x2="0.4064" y2="6.858" layer="21"/>
<rectangle x1="0.9652" y1="-0.381" x2="1.778" y2="6.858" layer="21"/>
<rectangle x1="2.3368" y1="2.159" x2="3.1496" y2="6.858" layer="21"/>
<rectangle x1="3.7084" y1="-0.381" x2="4.5212" y2="6.858" layer="21"/>
<rectangle x1="5.08" y1="2.159" x2="5.8928" y2="6.858" layer="21"/>
<rectangle x1="6.4516" y1="-0.381" x2="7.2644" y2="6.858" layer="21"/>
<rectangle x1="7.8232" y1="2.159" x2="8.636" y2="6.858" layer="21"/>
<rectangle x1="9.1948" y1="-0.381" x2="10.0076" y2="6.858" layer="21"/>
<hole x="-16.6624" y="0" drill="3.302"/>
<hole x="16.6624" y="0" drill="3.302"/>
</package>
<package name="F15HP">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-11.811" y1="17.907" x2="-11.557" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="17.399" x2="-11.811" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.684" y1="17.907" x2="12.192" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.938" y1="11.684" x2="11.811" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="7.62" x2="-14.605" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="7.62" x2="-19.685" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="7.62" x2="-19.685" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="10.668" x2="-19.685" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="11.176" x2="-19.685" y2="11.684" width="0.1524" layer="21"/>
<wire x1="19.558" y1="11.684" x2="19.558" y2="11.176" width="0.1524" layer="21"/>
<wire x1="19.558" y1="11.176" x2="19.558" y2="10.668" width="0.1524" layer="21"/>
<wire x1="19.558" y1="10.668" x2="19.558" y2="7.62" width="0.1524" layer="21"/>
<wire x1="19.558" y1="7.62" x2="19.558" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="11.176" x2="-17.145" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="11.176" x2="-14.605" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="10.668" x2="-14.605" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="10.668" x2="-14.478" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-14.478" y1="8.255" x2="-13.843" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.605" y1="7.62" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.716" y1="7.62" x2="-13.462" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-14.478" y1="8.255" x2="-14.478" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="7.62" x2="-13.462" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="7.62" x2="13.335" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="6.858" x2="13.335" y2="6.858" width="0.1524" layer="21"/>
<wire x1="13.335" y1="7.62" x2="13.335" y2="6.858" width="0.1524" layer="21"/>
<wire x1="13.335" y1="7.62" x2="13.589" y2="7.62" width="0.1524" layer="21"/>
<wire x1="13.589" y1="7.62" x2="14.478" y2="7.62" width="0.1524" layer="21"/>
<wire x1="17.018" y1="11.176" x2="19.558" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="11.176" x2="14.478" y2="11.176" width="0.1524" layer="21"/>
<wire x1="14.478" y1="11.176" x2="17.018" y2="11.176" width="0.1524" layer="21"/>
<wire x1="14.478" y1="10.668" x2="14.478" y2="11.176" width="0.1524" layer="21"/>
<wire x1="14.351" y1="8.255" x2="14.351" y2="10.668" width="0.1524" layer="21"/>
<wire x1="14.351" y1="10.668" x2="14.478" y2="10.668" width="0.1524" layer="21"/>
<wire x1="13.716" y1="7.62" x2="14.351" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-19.05" y1="-3.175" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-19.685" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-14.224" y1="-3.175" x2="-19.05" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-14.224" y1="-3.175" x2="-13.716" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-13.716" y1="-2.667" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="13.589" y1="-2.667" x2="13.589" y2="7.62" width="0.1524" layer="21"/>
<wire x1="13.589" y1="-2.667" x2="14.097" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="14.097" y1="-3.175" x2="19.05" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-3.175" x2="19.558" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="19.558" y1="-2.667" x2="19.558" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-1.3716" y1="-1.143" x2="-1.3716" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-6.858" y1="-1.143" x2="-6.858" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-9.6012" y1="-1.143" x2="-9.6012" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-8.2296" y1="1.397" x2="-8.2296" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-5.4864" y1="1.397" x2="-5.4864" y2="2.413" width="0.8128" layer="51"/>
<wire x1="0" y1="1.397" x2="0" y2="2.413" width="0.8128" layer="51"/>
<wire x1="4.1148" y1="-1.143" x2="4.1148" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="8.2296" y1="1.397" x2="8.2296" y2="2.413" width="0.8128" layer="51"/>
<wire x1="9.6012" y1="-1.143" x2="9.6012" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="5.4864" y1="1.397" x2="5.4864" y2="2.413" width="0.8128" layer="51"/>
<wire x1="6.858" y1="-1.143" x2="6.858" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="2.7432" y1="1.397" x2="2.7432" y2="2.413" width="0.8128" layer="51"/>
<wire x1="1.3716" y1="-1.143" x2="1.3716" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="-2.7432" y1="1.397" x2="-2.7432" y2="2.413" width="0.8128" layer="51"/>
<wire x1="-4.1148" y1="-1.143" x2="-4.1148" y2="-0.127" width="0.8128" layer="51"/>
<wire x1="14.478" y1="7.62" x2="19.558" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="11.684" x2="-11.938" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="12.319" x2="-12.319" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-12.954" y1="11.684" x2="-12.319" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="11.811" y1="11.684" x2="19.558" y2="11.684" width="0.1524" layer="21"/>
<wire x1="12.192" y1="12.319" x2="12.192" y2="17.399" width="0.1524" layer="21"/>
<wire x1="12.192" y1="12.319" x2="12.827" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="-11.557" y1="17.907" x2="11.43" y2="17.907" width="0.1524" layer="21"/>
<wire x1="11.43" y1="17.907" x2="11.684" y2="17.907" width="0.1524" layer="21"/>
<circle x="-16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-9.6012" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-6.858" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-4.1148" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.3716" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="1.3716" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="4.1148" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="6.858" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="9.6012" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-8.2296" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-5.4864" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="-2.7432" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="2.7432" y="1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="5.4864" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="8.2296" y="1.27" drill="1.016" shape="octagon"/>
<pad name="G2" x="16.6624" y="0" drill="3.302" diameter="5.08"/>
<pad name="G1" x="-16.6624" y="0" drill="3.302" diameter="5.08"/>
<text x="-19.431" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.382" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-11.811" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="11.049" y="-1.905" size="1.27" layer="21" ratio="10">8</text>
<text x="-11.811" y="0.635" size="1.27" layer="21" ratio="10">9</text>
<text x="11.049" y="0.635" size="1.27" layer="21" ratio="10">15</text>
<text x="19.05" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">2,54</text>
<text x="-11.811" y="8.509" size="1.27" layer="21" ratio="10">F15</text>
<rectangle x1="-13.462" y1="6.858" x2="13.335" y2="7.62" layer="21"/>
<rectangle x1="-19.685" y1="11.176" x2="19.558" y2="11.684" layer="21"/>
<rectangle x1="-10.0076" y1="-0.381" x2="-9.1948" y2="6.858" layer="21"/>
<rectangle x1="-8.636" y1="2.159" x2="-7.8232" y2="6.858" layer="21"/>
<rectangle x1="-7.2644" y1="-0.381" x2="-6.4516" y2="6.858" layer="21"/>
<rectangle x1="-5.8928" y1="2.159" x2="-5.08" y2="6.858" layer="21"/>
<rectangle x1="-4.5212" y1="-0.381" x2="-3.7084" y2="6.858" layer="21"/>
<rectangle x1="-3.1496" y1="2.159" x2="-2.3368" y2="6.858" layer="21"/>
<rectangle x1="-1.778" y1="-0.381" x2="-0.9652" y2="6.858" layer="21"/>
<rectangle x1="-0.4064" y1="2.159" x2="0.4064" y2="6.858" layer="21"/>
<rectangle x1="0.9652" y1="-0.381" x2="1.778" y2="6.858" layer="21"/>
<rectangle x1="2.3368" y1="2.159" x2="3.1496" y2="6.858" layer="21"/>
<rectangle x1="3.7084" y1="-0.381" x2="4.5212" y2="6.858" layer="21"/>
<rectangle x1="5.08" y1="2.159" x2="5.8928" y2="6.858" layer="21"/>
<rectangle x1="6.4516" y1="-0.381" x2="7.2644" y2="6.858" layer="21"/>
<rectangle x1="7.8232" y1="2.159" x2="8.636" y2="6.858" layer="21"/>
<rectangle x1="9.1948" y1="-0.381" x2="10.0076" y2="6.858" layer="21"/>
</package>
<package name="F15V">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-11.7094" y1="-2.9464" x2="-12.4968" y2="2.3368" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-3.937" x2="11.7227" y2="-2.905" width="0.1524" layer="21" curve="76.489196"/>
<wire x1="11.176" y1="3.937" x2="12.4915" y2="2.3038" width="0.1524" layer="21" curve="-102.298925"/>
<wire x1="12.4968" y1="2.3114" x2="11.7094" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="3.937" x2="11.176" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-12.4961" y1="2.3268" x2="-11.176" y2="3.937" width="0.1524" layer="21" curve="-101.30773"/>
<wire x1="-11.7169" y1="-2.9295" x2="-10.414" y2="-3.937" width="0.1524" layer="21" curve="75.428151"/>
<wire x1="-10.414" y1="-3.937" x2="10.414" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.223" x2="-16.891" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.223" x2="-14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.096" x2="-14.351" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.096" x2="-14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.223" x2="14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-6.223" x2="-16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-5.588" x2="-19.05" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="19.05" y1="-6.223" x2="19.685" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="19.05" y1="6.223" x2="16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="19.685" y1="5.588" x2="19.685" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.223" x2="19.685" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-19.685" y1="5.588" x2="-19.685" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="5.588" x2="-19.05" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="14.351" y1="-6.223" x2="14.351" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="14.351" y1="-6.223" x2="16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="-6.096" x2="16.891" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.096" x2="16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.223" x2="19.05" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.223" x2="14.351" y2="6.096" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.223" x2="-14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.096" x2="16.891" y2="6.096" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.096" x2="16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.223" x2="14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.223" x2="-16.891" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.223" x2="-19.05" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.096" x2="-14.351" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="6.096" x2="-14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="6.223" x2="-16.891" y2="6.223" width="0.1524" layer="21"/>
<circle x="16.6624" y="0" radius="2.667" width="0" layer="42"/>
<circle x="16.6624" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-16.6624" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-16.6624" y="0" radius="2.667" width="0" layer="43"/>
<circle x="2.7432" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1148" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.4864" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="6.858" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7432" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1148" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="9.6012" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="8.2296" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-6.858" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-9.6012" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.4864" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-8.2296" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="9.6012" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="2" x="6.858" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="3" x="4.1148" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="4" x="1.3716" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="5" x="-1.3716" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="6" x="-4.1148" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="7" x="-6.858" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="8" x="-9.6012" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="9" x="8.2296" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="10" x="5.4864" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="11" x="2.7432" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="13" x="-2.7432" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="14" x="-5.4864" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="15" x="-8.2296" y="-1.4224" drill="1.016" shape="octagon"/>
<text x="9.2456" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="6.4516" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="3.6576" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="0.9906" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="-1.8034" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="-4.5974" y="2.54" size="0.9906" layer="21" ratio="12">6</text>
<text x="-7.3914" y="2.54" size="0.9906" layer="21" ratio="12">7</text>
<text x="-10.1854" y="2.54" size="0.9906" layer="21" ratio="12">8</text>
<text x="7.8486" y="-3.556" size="0.9906" layer="21" ratio="12">9</text>
<text x="-19.558" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.699" y="-3.556" size="0.9906" layer="21" ratio="12">10</text>
<text x="2.032" y="-3.556" size="0.9906" layer="21" ratio="12">11</text>
<text x="-0.762" y="-3.556" size="0.9906" layer="21" ratio="12">12</text>
<text x="-3.556" y="-3.556" size="0.9906" layer="21" ratio="12">13</text>
<text x="-6.35" y="-3.556" size="0.9906" layer="21" ratio="12">14</text>
<text x="-9.017" y="-3.556" size="0.9906" layer="21" ratio="12">15</text>
<hole x="16.6624" y="0" drill="3.302"/>
<hole x="-16.6624" y="0" drill="3.302"/>
</package>
<package name="F15VP">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-11.7094" y1="-2.9464" x2="-12.4968" y2="2.3368" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-3.937" x2="11.7227" y2="-2.905" width="0.1524" layer="21" curve="76.489196"/>
<wire x1="11.176" y1="3.937" x2="12.4915" y2="2.3038" width="0.1524" layer="21" curve="-102.298925"/>
<wire x1="12.4968" y1="2.3114" x2="11.7094" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-11.176" y1="3.937" x2="11.176" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-12.4961" y1="2.3268" x2="-11.176" y2="3.937" width="0.1524" layer="21" curve="-101.30773"/>
<wire x1="-11.7169" y1="-2.9295" x2="-10.414" y2="-3.937" width="0.1524" layer="21" curve="75.428151"/>
<wire x1="-10.414" y1="-3.937" x2="10.414" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.223" x2="-16.891" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.223" x2="-14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.096" x2="-14.351" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.096" x2="-14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.223" x2="14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-6.223" x2="-16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-5.588" x2="-19.05" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="19.05" y1="-6.223" x2="19.685" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="19.05" y1="6.223" x2="16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="19.685" y1="5.588" x2="19.685" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.223" x2="19.685" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-19.685" y1="5.588" x2="-19.685" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="5.588" x2="-19.05" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="14.351" y1="-6.223" x2="14.351" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="14.351" y1="-6.223" x2="16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="-6.096" x2="16.891" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.096" x2="16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.223" x2="19.05" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.223" x2="14.351" y2="6.096" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.223" x2="-14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.096" x2="16.891" y2="6.096" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.096" x2="16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.223" x2="14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.223" x2="-16.891" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.223" x2="-19.05" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.096" x2="-14.351" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="6.096" x2="-14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="6.223" x2="-16.891" y2="6.223" width="0.1524" layer="21"/>
<circle x="2.7432" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1148" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.4864" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="6.858" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7432" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1148" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="16.6624" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="9.6012" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="8.2296" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-6.858" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-9.6012" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.4864" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-8.2296" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="9.6012" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="2" x="6.858" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="3" x="4.1148" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="4" x="1.3716" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="5" x="-1.3716" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="6" x="-4.1148" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="7" x="-6.858" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="8" x="-9.6012" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="9" x="8.2296" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="10" x="5.4864" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="11" x="2.7432" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="13" x="-2.7432" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="14" x="-5.4864" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="15" x="-8.2296" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="G1" x="-16.6624" y="0" drill="3.302" diameter="5.08"/>
<pad name="G2" x="16.6624" y="0" drill="3.302" diameter="5.08"/>
<text x="9.2456" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="6.4516" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="3.6576" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="0.9906" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="-1.8034" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="-4.5974" y="2.54" size="0.9906" layer="21" ratio="12">6</text>
<text x="-7.3914" y="2.54" size="0.9906" layer="21" ratio="12">7</text>
<text x="-10.1854" y="2.54" size="0.9906" layer="21" ratio="12">8</text>
<text x="7.8486" y="-3.556" size="0.9906" layer="21" ratio="12">9</text>
<text x="-19.558" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.699" y="-3.556" size="0.9906" layer="21" ratio="12">10</text>
<text x="2.032" y="-3.556" size="0.9906" layer="21" ratio="12">11</text>
<text x="-0.762" y="-3.556" size="0.9906" layer="21" ratio="12">12</text>
<text x="-3.556" y="-3.556" size="0.9906" layer="21" ratio="12">13</text>
<text x="-6.35" y="-3.556" size="0.9906" layer="21" ratio="12">14</text>
<text x="-9.017" y="-3.556" size="0.9906" layer="21" ratio="12">15</text>
</package>
<package name="HDF15H">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="7.62" y1="-17.607" x2="8.128" y2="-17.099" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.128" y1="-17.099" x2="-7.62" y2="-17.607" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.494" y1="-11.276" x2="-15.494" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="9.614" y1="-10.368" x2="9.614" y2="-11.276" width="0.1524" layer="21"/>
<wire x1="9.614" y1="-10.368" x2="9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="9.487" y1="-10.368" x2="-9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="8.852" y1="-7.62" x2="9.487" y2="-8.255" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.487" y1="-8.255" x2="9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="-9.614" y1="-10.368" x2="-9.614" y2="-11.276" width="0.1524" layer="21"/>
<wire x1="-9.487" y1="-8.255" x2="-9.487" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="-9.487" y1="-10.368" x2="-9.614" y2="-10.368" width="0.1524" layer="21"/>
<wire x1="-9.487" y1="-8.255" x2="-8.852" y2="-7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="14.859" y1="4.445" x2="15.494" y2="3.81" width="0.1524" layer="21"/>
<wire x1="15.494" y1="3.81" x2="15.494" y2="-11.276" width="0.1524" layer="21"/>
<wire x1="10.033" y1="4.445" x2="14.859" y2="4.445" width="0.1524" layer="21"/>
<wire x1="10.033" y1="4.445" x2="9.525" y2="3.937" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.937" x2="9.525" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.937" x2="-9.525" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="3.937" x2="-10.033" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="4.445" x2="-14.986" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="4.445" x2="-15.494" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="3.937" x2="-15.494" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-11.919" x2="8.128" y2="-17.099" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-11.919" x2="8.763" y2="-11.284" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.128" y1="-11.919" x2="-8.128" y2="-17.099" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-11.284" x2="-8.128" y2="-11.919" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.62" y1="-17.607" x2="-7.62" y2="-17.607" width="0.1524" layer="21"/>
<wire x1="15.476" y1="-11.294" x2="-15.38" y2="-11.294" width="0.1524" layer="21"/>
<wire x1="15.475" y1="-7.62" x2="-15.494" y2="-7.62" width="0.1524" layer="21"/>
<circle x="12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="10" x="-3.672" y="0" drill="0.9"/>
<pad name="9" x="-1.386" y="0" drill="0.9"/>
<pad name="8" x="0.9" y="0" drill="0.9"/>
<pad name="7" x="3.186" y="0" drill="0.9"/>
<pad name="6" x="5.472" y="0" drill="0.9"/>
<pad name="5" x="-4.815" y="2.54" drill="0.9"/>
<pad name="4" x="-2.529" y="2.54" drill="0.9"/>
<pad name="3" x="-0.243" y="2.54" drill="0.9"/>
<pad name="2" x="2.043" y="2.54" drill="0.9"/>
<pad name="1" x="4.329" y="2.54" drill="0.9" shape="octagon"/>
<pad name="15" x="-4.815" y="-2.54" drill="0.9"/>
<pad name="14" x="-2.529" y="-2.54" drill="0.9"/>
<pad name="13" x="-0.243" y="-2.54" drill="0.9"/>
<pad name="12" x="2.043" y="-2.54" drill="0.9"/>
<pad name="11" x="4.329" y="-2.54" drill="0.9"/>
<text x="-8.89" y="5.08" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="5.08" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.48" y="2.095" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.915" y="1.995" size="1.27" layer="21" ratio="10">5</text>
<text x="6.58" y="-0.565" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.115" y="-0.665" size="1.27" layer="21" ratio="10">10</text>
<text x="-7.82" y="-3.565" size="1.27" layer="21" ratio="10">15</text>
<text x="5.98" y="-3.265" size="1.27" layer="21" ratio="10">11</text>
<text x="-6.064" y="-14.717" size="1.27" layer="51" ratio="10">HDF15 CONEC</text>
<text x="2.413" y="-9.652" size="1.27" layer="21">Female</text>
<rectangle x1="0.7" y1="-7.6" x2="1.1" y2="-1.5" layer="21"/>
<rectangle x1="-1.586" y1="-7.6" x2="-1.186" y2="-1.5" layer="21"/>
<rectangle x1="-3.872" y1="-7.6" x2="-3.472" y2="-1.5" layer="21"/>
<rectangle x1="2.986" y1="-7.6" x2="3.386" y2="-1.5" layer="21"/>
<rectangle x1="5.272" y1="-7.6" x2="5.672" y2="-1.5" layer="21"/>
<rectangle x1="-0.443" y1="-7.6" x2="-0.043" y2="-4" layer="21"/>
<rectangle x1="-2.729" y1="-7.6" x2="-2.329" y2="-4" layer="21"/>
<rectangle x1="-5.015" y1="-7.6" x2="-4.615" y2="-4" layer="21"/>
<rectangle x1="1.843" y1="-7.6" x2="2.243" y2="-4" layer="21"/>
<rectangle x1="4.129" y1="-7.6" x2="4.529" y2="-4" layer="21"/>
<rectangle x1="-5.015" y1="-1.6" x2="-4.615" y2="1.5" layer="21"/>
<rectangle x1="-2.729" y1="-1.6" x2="-2.329" y2="1.5" layer="21"/>
<rectangle x1="-0.443" y1="-1.6" x2="-0.043" y2="1.5" layer="21"/>
<rectangle x1="1.843" y1="-1.6" x2="2.243" y2="1.5" layer="21"/>
<rectangle x1="4.129" y1="-1.6" x2="4.529" y2="1.5" layer="21"/>
<hole x="-12.5" y="0" drill="3"/>
<hole x="12.5" y="0" drill="3"/>
</package>
<package name="HDF15V">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-7.409" y1="-3.146" x2="-8.197" y2="2.537" width="0.1524" layer="21"/>
<wire x1="6.876" y1="4.137" x2="8.1915" y2="2.5038" width="0.1524" layer="21" curve="-102.298925"/>
<wire x1="8.197" y1="2.511" x2="7.409" y2="-3.121" width="0.1524" layer="21"/>
<wire x1="-6.876" y1="4.137" x2="6.876" y2="4.137" width="0.1524" layer="21"/>
<wire x1="-8.1961" y1="2.5268" x2="-6.876" y2="4.137" width="0.1524" layer="21" curve="-101.30773"/>
<wire x1="-7.4169" y1="-3.1295" x2="-6.114" y2="-4.137" width="0.1524" layer="21" curve="75.428151"/>
<wire x1="-6.114" y1="-4.137" x2="6.114" y2="-4.137" width="0.1524" layer="21"/>
<wire x1="-15.556" y1="-6.288" x2="-14.921" y2="-6.923" width="0.1524" layer="21" curve="90"/>
<wire x1="14.921" y1="-6.923" x2="15.556" y2="-6.288" width="0.1524" layer="21" curve="90"/>
<wire x1="15.556" y1="6.288" x2="15.556" y2="-6.288" width="0.1524" layer="21"/>
<wire x1="14.921" y1="6.923" x2="15.556" y2="6.288" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.556" y1="6.288" x2="-15.556" y2="-6.288" width="0.1524" layer="21"/>
<wire x1="-15.556" y1="6.288" x2="-14.921" y2="6.923" width="0.1524" layer="21" curve="-90"/>
<wire x1="-14.913" y1="-6.923" x2="14.921" y2="-6.923" width="0.1524" layer="21"/>
<wire x1="14.913" y1="6.923" x2="-14.921" y2="6.923" width="0.1524" layer="21"/>
<wire x1="6.114" y1="-4.137" x2="7.4169" y2="-3.1295" width="0.1524" layer="21" curve="75.428151"/>
<circle x="12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-12.5" y="0" radius="2.667" width="0" layer="43"/>
<circle x="-12.5" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="10" x="-3.672" y="0" drill="0.9"/>
<pad name="9" x="-1.386" y="0" drill="0.9"/>
<pad name="8" x="0.9" y="0" drill="0.9"/>
<pad name="7" x="3.186" y="0" drill="0.9"/>
<pad name="6" x="5.472" y="0" drill="0.9"/>
<pad name="5" x="-4.815" y="1.98" drill="0.9"/>
<pad name="4" x="-2.529" y="1.98" drill="0.9"/>
<pad name="3" x="-0.243" y="1.98" drill="0.9"/>
<pad name="2" x="2.043" y="1.98" drill="0.9"/>
<pad name="1" x="4.329" y="1.98" drill="0.9" shape="octagon"/>
<pad name="15" x="-4.815" y="-1.98" drill="0.9"/>
<pad name="14" x="-2.529" y="-1.98" drill="0.9"/>
<pad name="13" x="-0.243" y="-1.98" drill="0.9"/>
<pad name="12" x="2.043" y="-1.98" drill="0.9"/>
<pad name="11" x="4.329" y="-1.98" drill="0.9"/>
<text x="-11.43" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-6.35" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.48" y="1.535" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.915" y="1.435" size="1.016" layer="21" ratio="10">5</text>
<text x="6.58" y="-0.565" size="1.016" layer="21" ratio="10">6</text>
<text x="-7.115" y="-0.665" size="1.016" layer="21" ratio="10">10</text>
<text x="-7.22" y="-3.165" size="1.016" layer="21" ratio="10">15</text>
<text x="5.38" y="-2.705" size="1.016" layer="21" ratio="10">11</text>
<text x="-12.033" y="5.349" size="1.27" layer="51" ratio="10">HDF15 CONEC</text>
<text x="2.413" y="4.826" size="1.27" layer="21">Female</text>
<hole x="-12.5" y="0" drill="3"/>
<hole x="12.5" y="0" drill="3"/>
</package>
<package name="F15VB">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="11.7094" y1="2.9464" x2="12.4968" y2="-2.3368" width="0.1524" layer="21"/>
<wire x1="-11.7227" y1="2.905" x2="-10.414" y2="3.937" width="0.1524" layer="21" curve="-76.489196"/>
<wire x1="-12.4915" y1="-2.3038" x2="-11.176" y2="-3.937" width="0.1524" layer="21" curve="102.298925"/>
<wire x1="-12.4968" y1="-2.3114" x2="-11.7094" y2="2.921" width="0.1524" layer="21"/>
<wire x1="11.176" y1="-3.937" x2="-11.176" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="11.176" y1="-3.937" x2="12.4961" y2="-2.3268" width="0.1524" layer="21" curve="101.30773"/>
<wire x1="10.414" y1="3.937" x2="11.7169" y2="2.9295" width="0.1524" layer="21" curve="-75.428151"/>
<wire x1="10.414" y1="3.937" x2="-10.414" y2="3.937" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.223" x2="16.891" y2="6.096" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.223" x2="14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="6.096" x2="14.351" y2="6.096" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.096" x2="14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="6.223" x2="-14.351" y2="6.223" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.223" x2="16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.223" x2="19.685" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-19.685" y1="5.588" x2="-19.05" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="-19.05" y1="-6.223" x2="-16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-5.588" x2="-19.685" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-5.588" x2="-19.05" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="19.685" y1="-5.588" x2="19.685" y2="5.588" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-6.223" x2="19.685" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.351" y1="6.223" x2="-14.351" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="6.223" x2="-16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="6.096" x2="-16.891" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.096" x2="-16.891" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="6.223" x2="-19.05" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.223" x2="-14.351" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.223" x2="14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-14.351" y1="-6.096" x2="-16.891" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.096" x2="-16.891" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-16.891" y1="-6.223" x2="-14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.223" x2="16.891" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.223" x2="19.05" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-6.096" x2="14.351" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="14.351" y1="-6.096" x2="14.351" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="14.351" y1="-6.223" x2="16.891" y2="-6.223" width="0.1524" layer="21"/>
<circle x="-2.7432" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1148" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.4864" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-6.858" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="2.7432" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1148" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-9.6012" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-8.2296" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="6.858" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="9.6012" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.4864" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="8.2296" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="-9.6012" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="2" x="-6.858" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="3" x="-4.1148" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.3716" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="5" x="1.3716" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="6" x="4.1148" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="7" x="6.858" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="8" x="9.6012" y="-1.4224" drill="1.016" shape="octagon"/>
<pad name="9" x="-8.2296" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="10" x="-5.4864" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="11" x="-2.7432" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="13" x="2.7432" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="14" x="5.4864" y="1.4224" drill="1.016" shape="octagon"/>
<pad name="15" x="8.2296" y="1.4224" drill="1.016" shape="octagon"/>
<text x="-9.2456" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">1</text>
<text x="-6.4516" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">2</text>
<text x="-3.6576" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">3</text>
<text x="-0.9906" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">4</text>
<text x="1.8034" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">5</text>
<text x="4.5974" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">6</text>
<text x="7.3914" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">7</text>
<text x="10.1854" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">8</text>
<text x="-7.8486" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">9</text>
<text x="-18.288" y="8.255" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="8.255" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.699" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">10</text>
<text x="-2.032" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">11</text>
<text x="0.762" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">12</text>
<text x="3.556" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">13</text>
<text x="6.35" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">14</text>
<text x="9.017" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">15</text>
</package>
</packages>
<symbols>
<symbol name="F15">
<wire x1="-1.651" y1="8.509" x2="-1.651" y2="6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="6.731" x2="1.524" y2="8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="5.969" x2="-1.651" y2="4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="4.191" x2="1.524" y2="5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="3.429" x2="-1.651" y2="1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="1.651" x2="1.524" y2="3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="-0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-1.651" x2="-1.651" y2="-3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-3.429" x2="1.524" y2="-1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-4.191" x2="-1.651" y2="-5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-5.969" x2="1.524" y2="-4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-6.731" x2="-1.651" y2="-8.509" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-8.509" x2="1.524" y2="-6.731" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-9.271" x2="-1.651" y2="-11.049" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-4.064" y1="9.4712" x2="-2.5226" y2="10.712" width="0.4064" layer="94" curve="-102.324066" cap="flat"/>
<wire x1="-2.5226" y1="10.7118" x2="3.0654" y2="9.4894" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="9.4895" x2="4.0642" y2="8.2488" width="0.4064" layer="94" curve="-77.655139" cap="flat"/>
<wire x1="4.064" y1="-10.7888" x2="4.064" y2="8.2488" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="-12.0294" x2="4.064" y2="-10.7888" width="0.4064" layer="94" curve="77.657889"/>
<wire x1="-4.064" y1="-12.0112" x2="-4.064" y2="9.4712" width="0.4064" layer="94"/>
<wire x1="-2.5226" y1="-13.2518" x2="3.0654" y2="-12.0294" width="0.4064" layer="94"/>
<wire x1="-4.064" y1="-12.0112" x2="-2.5226" y2="-13.2519" width="0.4064" layer="94" curve="102.337599" cap="flat"/>
<text x="-4.445" y="-15.875" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="4" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="5" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="6" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="7" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="8" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas"/>
<pin name="9" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="10" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="11" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="12" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="13" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="14" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="15" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="F15" prefix="X" uservalue="yes">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="F15" x="0" y="0"/>
</gates>
<devices>
<device name="D" package="F15D">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="H" package="F15H">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HP" package="F15HP">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="V" package="F15V">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="VP" package="F15VP">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HDH" package="HDF15H">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="HDV" package="HDF15V">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="VB" package="F15VB">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-1" pin="10" pad="10"/>
<connect gate="-1" pin="11" pad="11"/>
<connect gate="-1" pin="12" pad="12"/>
<connect gate="-1" pin="13" pad="13"/>
<connect gate="-1" pin="14" pad="14"/>
<connect gate="-1" pin="15" pad="15"/>
<connect gate="-1" pin="2" pad="2"/>
<connect gate="-1" pin="3" pad="3"/>
<connect gate="-1" pin="4" pad="4"/>
<connect gate="-1" pin="5" pad="5"/>
<connect gate="-1" pin="6" pad="6"/>
<connect gate="-1" pin="7" pad="7"/>
<connect gate="-1" pin="8" pad="8"/>
<connect gate="-1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wuerth">
<description>&lt;BR&gt;Würth Elektronik -- Electronic Interconnect &amp; Electromechanical Solutions&lt;br&gt;&lt;Hr&gt;
&lt;BR&gt;&lt;BR&gt; 
&lt;TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0&gt;
&lt;TR&gt;   
&lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;BR&gt;&lt;br&gt;
      &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
&lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;br&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;
      -----&lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt; &lt;FONT FACE=ARIAL SIZE=3&gt;&lt;br&gt;
      ---------------------------&lt;BR&gt;
&lt;B&gt;&lt;I&gt;&lt;span style='font-size:26pt;
  color:#FF6600;'&gt;WE &lt;/span&gt;&lt;/i&gt;&lt;/b&gt;
&lt;BR&gt;
      ---------------------------&lt;BR&gt;&lt;b&gt;Würth Elektronik&lt;/b&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;br&gt;
      ---------O---&lt;BR&gt;
      ----O--------&lt;BR&gt;
      ---------O---&lt;BR&gt;
      ----O--------&lt;BR&gt;
      ---------O---&lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
   
&lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;&lt;BR&gt;
      &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;
       &lt;BR&gt;&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;

  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  
&lt;/TABLE&gt;
&lt;B&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;More than you expect&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;/B&gt;

&lt;HR&gt;&lt;BR&gt;
&lt;b&gt;Würth Elektronik eiSos GmbH &amp; Co. KG&lt;/b&gt;&lt;br&gt;
EMC &amp; Inductive Solutions&lt;br&gt;

Max-Eyth-Str.1&lt;br&gt;
D-74638 Waldenburg&lt;br&gt;
&lt;br&gt;
Tel: +49 (0)7942-945-0&lt;br&gt;
Fax:+49 (0)7942-945-405&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.we-online.com"&gt;http://www.we-online.com&lt;/a&gt;&lt;br&gt;
&lt;a href="mailto:pm.hotline@we-online.de"&gt;pm.hotline@we-online.de&lt;/a&gt; &lt;BR&gt;&lt;BR&gt;
&lt;br&gt;&lt;HR&gt;&lt;BR&gt;
Neither CadSoft nor WE-eiSos does warrant that this library is error-free or &lt;br&gt;
that it meets your specific requirements.&lt;br&gt;&lt;BR&gt;
Please contact us for more information.&lt;br&gt;&lt;BR&gt;&lt;br&gt;
&lt;hr&gt;
Version 1.2,   May 6-th 2011
&lt;HR&gt;
Copyright: Würth Elektronik</description>
<packages>
<package name="685119134923">
<description>WR-COM SMT Horizontal HDMI, 19 pins</description>
<wire x1="-7.7" y1="0.1" x2="-7.7" y2="-1.7" width="0.127" layer="46"/>
<wire x1="-7.7" y1="-1.7" x2="-6.8" y2="-1.7" width="0.127" layer="46" curve="180"/>
<wire x1="-6.8" y1="-1.7" x2="-6.8" y2="0.1" width="0.127" layer="46"/>
<wire x1="-6.8" y1="0.1" x2="-7.7" y2="0.1" width="0.127" layer="46" curve="180"/>
<wire x1="6.8" y1="0.1" x2="6.8" y2="-1.7" width="0.127" layer="46"/>
<wire x1="6.8" y1="-1.7" x2="7.7" y2="-1.7" width="0.127" layer="46" curve="180"/>
<wire x1="7.7" y1="-1.7" x2="7.7" y2="0.1" width="0.127" layer="46"/>
<wire x1="7.7" y1="0.1" x2="6.8" y2="0.1" width="0.127" layer="46" curve="180"/>
<wire x1="6.8" y1="-7.4" x2="7.7" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="7.7" y1="-6.2" x2="6.8" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="6.8" y1="-7.4" x2="7.7" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="7.7" y1="-6.2" x2="6.8" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="6.8" y1="-7.4" x2="7.7" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="7.7" y1="-6.2" x2="6.8" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="6.8" y1="-6.2" x2="6.8" y2="-7.4" width="0.127" layer="46"/>
<wire x1="6.8" y1="-7.4" x2="7.7" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="7.7" y1="-7.4" x2="7.7" y2="-6.2" width="0.127" layer="46"/>
<wire x1="7.7" y1="-6.2" x2="6.8" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="-7.7" y1="-7.4" x2="-6.8" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="-6.8" y1="-6.2" x2="-7.7" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="-7.7" y1="-7.4" x2="-6.8" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="-6.8" y1="-6.2" x2="-7.7" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="-7.7" y1="-7.4" x2="-6.8" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="-6.8" y1="-6.2" x2="-7.7" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="-7.7" y1="-6.2" x2="-7.7" y2="-7.4" width="0.127" layer="46"/>
<wire x1="-7.7" y1="-7.4" x2="-6.8" y2="-7.4" width="0.127" layer="46" curve="180"/>
<wire x1="-6.8" y1="-7.4" x2="-6.8" y2="-6.2" width="0.127" layer="46"/>
<wire x1="-6.8" y1="-6.2" x2="-7.7" y2="-6.2" width="0.127" layer="46" curve="180"/>
<wire x1="-7.5" y1="1.8" x2="7.5" y2="1.8" width="0.127" layer="51"/>
<wire x1="7.5" y1="1.8" x2="7.5" y2="-10.35" width="0.127" layer="51"/>
<wire x1="7.5" y1="-10.35" x2="-7.5" y2="-10.35" width="0.127" layer="51"/>
<wire x1="-7.5" y1="-10.35" x2="-7.5" y2="1.8" width="0.127" layer="51"/>
<wire x1="-8.4" y1="1.8" x2="8.4" y2="1.8" width="0.127" layer="21"/>
<wire x1="8.4" y1="1.8" x2="8.4" y2="-10.35" width="0.127" layer="21"/>
<wire x1="8.4" y1="-10.35" x2="-8.4" y2="-10.35" width="0.127" layer="21"/>
<wire x1="-8.4" y1="-10.35" x2="-8.4" y2="1.8" width="0.127" layer="21"/>
<pad name="Z1" x="-7.25" y="-0.8" drill="0.9" diameter="1.778" shape="long" rot="R90"/>
<pad name="Z4" x="7.25" y="-0.8" drill="0.9" diameter="1.778" shape="long" rot="R90"/>
<pad name="Z2" x="-7.25" y="-6.8" drill="0.9" diameter="1.778" shape="long" rot="R90"/>
<pad name="Z3" x="7.25" y="-6.8" drill="0.9" diameter="1.778" shape="long" rot="R90"/>
<smd name="10" x="0" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="9" x="0.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="8" x="1" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="7" x="1.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="6" x="2" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="5" x="2.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="4" x="3" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="3" x="3.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="11" x="-0.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="12" x="-1" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="13" x="-1.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="14" x="-2" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="15" x="-2.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="16" x="-3" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="17" x="-3.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="2" x="4" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="1" x="4.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="18" x="-4" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<smd name="19" x="-4.5" y="0" dx="0.28" dy="2.6" layer="1" rot="R180"/>
<text x="4.05" y="-0.9" size="1.27" layer="51">1</text>
<text x="-5.85" y="-0.9" size="1.27" layer="51">19</text>
<text x="-3.302" y="2.2309" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.752" y="-12.3034" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="19">
<wire x1="-2.54" y1="-35.56" x2="-2.54" y2="15.24" width="0.254" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="15.24" x2="5.08" y2="-35.56" width="0.254" layer="94"/>
<wire x1="5.08" y1="-35.56" x2="-2.54" y2="-35.56" width="0.254" layer="94"/>
<text x="-2.54" y="16.51" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-38.1" size="1.778" layer="96">&gt;VALUE</text>
<pin name="5" x="-7.62" y="2.54" visible="pin" length="middle" direction="pas"/>
<pin name="4" x="-7.62" y="5.08" visible="pin" length="middle" direction="pas"/>
<pin name="3" x="-7.62" y="7.62" visible="pin" length="middle" direction="pas"/>
<pin name="2" x="-7.62" y="10.16" visible="pin" length="middle" direction="pas"/>
<pin name="1" x="-7.62" y="12.7" visible="pin" length="middle" direction="pas"/>
<pin name="6" x="-7.62" y="0" visible="pin" length="middle" direction="pas"/>
<pin name="7" x="-7.62" y="-2.54" visible="pin" length="middle" direction="pas"/>
<pin name="8" x="-7.62" y="-5.08" visible="pin" length="middle" direction="pas"/>
<pin name="9" x="-7.62" y="-7.62" visible="pin" length="middle" direction="pas"/>
<pin name="10" x="-7.62" y="-10.16" visible="pin" length="middle" direction="pas"/>
<pin name="11" x="-7.62" y="-12.7" visible="pin" length="middle" direction="pas"/>
<pin name="12" x="-7.62" y="-15.24" visible="pin" length="middle" direction="pas"/>
<pin name="13" x="-7.62" y="-17.78" visible="pin" length="middle" direction="pas"/>
<pin name="14" x="-7.62" y="-20.32" visible="pin" length="middle" direction="pas"/>
<pin name="15" x="-7.62" y="-22.86" visible="pin" length="middle" direction="pas"/>
<pin name="16" x="-7.62" y="-25.4" visible="pin" length="middle" direction="pas"/>
<pin name="17" x="-7.62" y="-27.94" visible="pin" length="middle" direction="pas"/>
<pin name="18" x="-7.62" y="-30.48" visible="pin" length="middle" direction="pas"/>
<pin name="19" x="-7.62" y="-33.02" visible="pin" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="685119134923" prefix="K">
<description>WR-COM SMT Horizontal HDMI, 19 pins</description>
<gates>
<gate name="G$1" symbol="19" x="0" y="7.62"/>
</gates>
<devices>
<device name="" package="685119134923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="JP1">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-1.016" y1="0" x2="-1.27" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="0" x2="-1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.27" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.254" x2="1.27" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-2.54" x2="1.27" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.286" x2="1.016" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.286" x2="1.27" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.54" x2="-1.016" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.286" x2="-1.016" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.286" x2="-1.27" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.254" x2="-1.27" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-2.54" x2="-1.27" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-2.54" x2="1.016" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="0" y="-1.27" drill="0.9144" shape="long"/>
<pad name="2" x="0" y="1.27" drill="0.9144" shape="long"/>
<text x="-1.651" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="2.921" y="-2.54" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.3048" y1="0.9652" x2="0.3048" y2="1.5748" layer="51"/>
<rectangle x1="-0.3048" y1="-1.5748" x2="0.3048" y2="-0.9652" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="JP2E">
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0" x2="3.175" y2="0" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0" x2="3.175" y2="0.635" width="0.4064" layer="94"/>
<wire x1="3.175" y1="0.635" x2="-0.635" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<text x="-1.27" y="0" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="0" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="JP1E" prefix="JP" uservalue="yes">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="JP2E" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="JP1">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
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
<part name="FRAME1" library="frames" deviceset="A4L-LOC" device=""/>
<part name="X3" library="con-subd" deviceset="F15" device="HP"/>
<part name="K1" library="wuerth" deviceset="685119134923" device=""/>
<part name="JP1" library="jumper" deviceset="JP1E" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="-132.08" y="-162.56"/>
<instance part="X3" gate="-1" x="-60.96" y="-88.9"/>
<instance part="K1" gate="G$1" x="0" y="-93.98"/>
<instance part="JP1" gate="A" x="-53.34" y="-121.92"/>
</instances>
<busses>
</busses>
<nets>
<net name="P5" class="0">
<segment>
<pinref part="X3" gate="-1" pin="5"/>
<wire x1="-68.58" y1="-91.44" x2="-73.66" y2="-91.44" width="0.1524" layer="91"/>
<label x="-73.66" y="-91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="K1" gate="G$1" pin="3"/>
<wire x1="-7.62" y1="-86.36" x2="-15.24" y2="-86.36" width="0.1524" layer="91"/>
<label x="-15.24" y="-86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="P7" class="0">
<segment>
<pinref part="X3" gate="-1" pin="7"/>
<wire x1="-68.58" y1="-96.52" x2="-73.66" y2="-96.52" width="0.1524" layer="91"/>
<label x="-73.66" y="-96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X3" gate="-1" pin="1"/>
<wire x1="-68.58" y1="-81.28" x2="-73.66" y2="-81.28" width="0.1524" layer="91"/>
<label x="-73.66" y="-81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X3" gate="-1" pin="2"/>
<wire x1="-68.58" y1="-83.82" x2="-73.66" y2="-83.82" width="0.1524" layer="91"/>
<label x="-73.66" y="-83.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X3" gate="-1" pin="14"/>
<wire x1="-53.34" y1="-93.98" x2="-48.26" y2="-93.98" width="0.1524" layer="91"/>
<label x="-50.8" y="-93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="K1" gate="G$1" pin="15"/>
<wire x1="-7.62" y1="-116.84" x2="-15.24" y2="-116.84" width="0.1524" layer="91"/>
<label x="-15.24" y="-116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X3" gate="-1" pin="13"/>
<wire x1="-53.34" y1="-91.44" x2="-48.26" y2="-91.44" width="0.1524" layer="91"/>
<label x="-50.8" y="-91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="-50.8" y1="-124.46" x2="-50.8" y2="-129.54" width="0.1524" layer="91"/>
<label x="-48.26" y="-129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="X3" gate="-1" pin="8"/>
<wire x1="-68.58" y1="-99.06" x2="-73.66" y2="-99.06" width="0.1524" layer="91"/>
<label x="-73.66" y="-99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="K1" gate="G$1" pin="16"/>
<wire x1="-7.62" y1="-119.38" x2="-15.24" y2="-119.38" width="0.1524" layer="91"/>
<label x="-15.24" y="-119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="P3" class="0">
<segment>
<pinref part="X3" gate="-1" pin="3"/>
<wire x1="-68.58" y1="-86.36" x2="-73.66" y2="-86.36" width="0.1524" layer="91"/>
<label x="-73.66" y="-86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="K1" gate="G$1" pin="1"/>
<wire x1="-7.62" y1="-81.28" x2="-15.24" y2="-81.28" width="0.1524" layer="91"/>
<label x="-15.24" y="-81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="P4" class="0">
<segment>
<pinref part="X3" gate="-1" pin="4"/>
<wire x1="-68.58" y1="-88.9" x2="-73.66" y2="-88.9" width="0.1524" layer="91"/>
<label x="-73.66" y="-88.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="K1" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="-83.82" x2="-15.24" y2="-83.82" width="0.1524" layer="91"/>
<label x="-15.24" y="-83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="P6" class="0">
<segment>
<pinref part="X3" gate="-1" pin="6"/>
<wire x1="-68.58" y1="-93.98" x2="-73.66" y2="-93.98" width="0.1524" layer="91"/>
<label x="-73.66" y="-93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="P9" class="0">
<segment>
<pinref part="X3" gate="-1" pin="9"/>
<wire x1="-53.34" y1="-81.28" x2="-48.26" y2="-81.28" width="0.1524" layer="91"/>
<label x="-50.8" y="-81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="P11" class="0">
<segment>
<pinref part="X3" gate="-1" pin="11"/>
<wire x1="-53.34" y1="-86.36" x2="-48.26" y2="-86.36" width="0.1524" layer="91"/>
<label x="-50.8" y="-86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="-53.34" y1="-124.46" x2="-53.34" y2="-129.54" width="0.1524" layer="91"/>
<label x="-58.42" y="-129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X3" gate="-1" pin="15"/>
<wire x1="-53.34" y1="-96.52" x2="-48.26" y2="-96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X3" gate="-1" pin="12"/>
<wire x1="-53.34" y1="-88.9" x2="-48.26" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
