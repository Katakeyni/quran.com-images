
<SCRIPT LANGUAGE=javascript>
<!--
function DoFormClose(){
	if(navigator.appName == "Microsoft Internet Explorer")
	{
		FontDownATL.NavigaterClose()
	}
	if((navigator.vendor=="Firefox")||(navigator.appName == "Netscape"))
	{
		window.close()
		FontDownNS.NavigaterClose()
	}
}

function CheckDownload(strErr)
{
	if (strErr!=''){
	}
}

//IE Functions-----------------------------------

function Quran_AyaFont(StrPage,nLength)
{
	try {
			FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/"
			FontDownATL.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11" , nLength)
			if (parseInt(StrPage)==576)
			{
				strErr = FontDownATL.DownLoadExx("QCF_P576_2.TTF" , "2005 8 11" , nLength)
			}
			SouraPart()
			}
	catch(e){}
}

function QuranFont_Tafeez(StrPage,StrPageMinus,StrPagePluse,nLength)
{
	nLength = 0;
	try {
			FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/";
			FontDownATL.DownLoadExx("QCF_P"+StrPageMinus+".TTF" , "2005 8 11" , nLength);
			FontDownATL.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11" , nLength);
			FontDownATL.DownLoadExx("QCF_P"+StrPagePluse+".TTF" , "2005 8 11" , nLength)
			if (parseInt(StrPage)==576 || parseInt(StrPageMinus)==576 || parseInt(StrPagePluse)==576)
			{
				FontDownATL.DownLoadExx("QCF_P576_2.TTF" , "2005 8 11" , nLength)
			}
			SouraPart()
		}
	catch(e){}
}

function QuranFont_Display(StrPage,nLength)
{
	nLength = 0;
	try {
		FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/";
		FontDownATL.DownLoadExx("QCF_P"+StrPage+".TTF" , "2004 8 11" , nLength);
		if (parseInt(StrPage)==576){
			FontDownATL.DownLoadExx("QCF_P576_2.TTF" , "2005 8 11" , nLength);
		}
		SouraPart();
	} catch(e){
	}
}

function SouraPart()
{
	nLength = 0;
	FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/"	
	FontDownATL.DownLoadExx("QCF_BSML.TTF" , "2005 7 11", nLength)
}

//MOZILLA Functions-----------------------------------
function Quran_AyaFontFireFox(StrPage,nLength)
{
	nLength = 0;
	try {
			FontDownNS.strFontsPath = "http://www.qurancomplex.com/TTF/";
			strErr = FontDownNS.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11",nLength);
			CheckDownload(strErr)
			SouraPart_Firefox()
		}
	catch(e){}
}

function QuranFont_DisplayFireFox(StrPage,nLength)
{
	nLength = 0;
	try {
			var FontDownNS;
			FontDownNS = document.getElementById("FontDownNSS");
			FontDownNS.strFontsPath = "http://www.qurancomplex.com/TTF/";
			FontDownNS.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11",nLength);
			SouraPart_Firefox()
		}
	catch(e)
	{
	}
}

function SouraPart_Firefox()
{
	nLength = 0;
	FontDownNS.strFontsPath = "http://www.qurancomplex.com/TTF/";
	FontDownNS.DownLoadExx("QCF_BSML.TTF" , "2005 9 8", nLength);
}


//-->
</Script>


<HTML dir=rtl>
<head>

<META content="MS 5.00.2314.1000" name=GENERATOR >
<title>display</title>
<Script language="Javascript">
<!--
var nCurrSora      =81;
var nCurrAya       =1;
var strCurrTafseer ="";

function Recitation(nSora, nAyaInSora)
{
	nCurrSora = nSora;
	nCurrAya  = nAyaInSora;
	location.href = "/Quran/Recite/ReciteOneAya.asp?s=" + nCurrSora + "&f=" + nCurrAya + "&t=286&Reciter=0";
}
function ClickAyaArea(nSora, nAyaInSora)
{
	nCurrSora = nSora;
	nCurrAya = nAyaInSora;
	if (nCurrSora>1 && nCurrAya==0){
		return false;
	}

AyatServices("/quran/ayat_services.asp?l=arb&nsora="+nCurrSora+"&naya="+nCurrAya+"&mod=display")

	document.cookie = "DisplaySora=" + nSora;
	document.cookie = "DisplayAya=" + nAyaInSora;
}
//-->
</script>




<!--tips script-->

<script language="javascript" src="search.js"></script>
<!--script language="javascript" src="dynlayer.js"></script-->
<SCRIPT LANGUAGE="JavaScript">
<!--
//ns4 = (document.layers)? true:false
//ie4 = (document.all)? true:false
//function init()
//{
//	TipObj = new DynLayer('TipDiv');
//}
//-->
</SCRIPT>
<script language="javascript" src="/Shared/ChURL.JS"></script>
</head>
<BODY TOPMARGIN=0  LEFTMARGIN=0 rightmargin=0 bgcolor="#ffffff" >

	<Object id="FontDownATL"  
	height=0 
	width=0 
	classid="clsid:38D6D77C-5EC1-4A4A-AFEB-85FE780CD61A" VIEWASTEXT>
	</Object>
	<embed id="FontDownNSS" align="absbottom" type="application/fonttools-plugin" width=0 height=0>
	<SCRIPT LANGUAGE=javascript>
	<!--
		var FontDownNS;
		FontDownNS = document.getElementById("FontDownNSS");
	//-->
	</SCRIPT>

	<SCRIPT LANGUAGE="JavaScript">
	<!--
		var StrPage = "586";
		var strLength="145584";
		if(navigator.appName == "Microsoft Internet Explorer")
		{
			QuranFont_Display(StrPage,strLength)
		}
		if((navigator.vendor=="Firefox")||(navigator.appName == "Netscape"))
		{
			QuranFont_DisplayFireFox(StrPage,strLength);
		}

	//-->
	</Script>
	
<DIV align=center>

<div align=center>
<table  border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
	<tr>
		<td align=middle valign=top>
		<TABLE align=justify border=0 bgcolor="#fafafa"	 cellspacing="0" cellpadding="0" width="100%">
			<TR align=justify>
				<TD align=middle dir=ltr>
				
<table border="0" cellpadding="0" align=center cellspacing="0" bgcolor="#FFFFff">

<tr>
<td colspan=3>
<table border="0" cellpadding="0" align=center cellspacing="0" WIDTH=100%>
<tr><td align=left dir=rtl><SPAN class=sc_F1>&#64396;&#64510;</span>
<td>&nbsp;</td>
<td align=right dir=rtl><SPAN class=sc_F1>&#64568;&#64598;</span></td>
</td>
</tr>
</table>
</tr>
	<tr>
<td colspan=3 width=499 height=22>
<img width=499 height=22 src="/Quran/Images/up.jpg" ><br></td>
</tr>
	<tr>
		<td width=23 height=725 background="/Quran/Images/left.jpg" ><br></td>
		<td align=center valign=top><!--FFFFE1 -->

</center>
		<TABLE align=justify border="0" bgcolor="#FEFEE4"	 cellspacing="0" cellpadding="0" width=453 height=100%>
			<TR align=justify>
				<TD align=middle>
					<html>
					<META http-equiv="Content-Type" CONTENT="text/html; charset=windows-1252">
					<head>
					<STYLE>
					.sc_F0 {FONT-FAMILY:QCF_P586; FONT-SIZE: 22pt; mso-font-charset: 0}
					.sc_F1 {FONT-FAMILY:QCF_BSML; FONT-SIZE: 20pt; mso-font-charset: 0}

					</STYLE>
					<STYLE>
					<!--
					 	@font-face {
						font-family: QCF_P586;
						font-style:  normal;
						font-weight: normal;

						}
					 	@font-face {
						font-family: QCF_BSML;
						font-style:  normal;
						font-weight: normal;
						}
					-->
					</STYLE>
					</head>
					<body>
					<TABLE  align=justify border=0 cellspace="0" cellpading="0" width=100%>
					  <TBODY>
					  <TR align=justify dir=rtl>
					    <TD align=middle>
							<SPAN class=sc_F0 style='line-height:165%'>
<CENTER>
<TABLE dir=ltr cellSpacing=0 cellPadding=0 width="412" border=0>
					                    <TBODY>
				                    <TR>
					<td width=100% align="center" dir=rtl height=49 background="/Quran/Images/frame.gif" >
</span><SPAN align="center" class=sc_F1>&#64396;&#64510;</span>
</TD></TR></TBODY></TABLE></CENTER>

					<SPAN class=sc_F1>
					<A name=81_0></A><A class=black onclick=ClickAyaArea(81,0) target=_top><center>&#64337;&#64338;&#64339;</center></A>
					</SPAN>
					<SPAN class=sc_F0>
				<A name=81_1></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,1) target=_top>&#64337;&#64338;&#64339;&#64340;</A><A name=81_2></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,2) target=_top>&#64341;&#64342;&#64343;&#64344;</A><A name=81_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,3) target=_top>&#64345;&#64346;</A><br><A name=81_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,3) target=_top>&#64347;&#64348;</A><A name=81_4></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,4) target=_top>&#64349;&#64350;&#64351;&#64352;</A><A name=81_5></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,5) target=_top>&#64353;&#64354;&#64355;</A><br><A name=81_5></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,5) target=_top>&#64356;</A><A name=81_6></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,6) target=_top>&#64357;&#64358;&#64359;&#64360;</A><A name=81_7></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,7) target=_top>&#64361;&#64362;&#64363;&#64364;</A><A name=81_8></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,8) target=_top>&#64365;</A><br><A name=81_8></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,8) target=_top>&#64366;&#64367;&#64368;</A><A name=81_9></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,9) target=_top>&#64369;&#64370;&#64371;&#64372;</A><A name=81_10></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,10) target=_top>&#64373;&#64374;&#64375;</A><br><A name=81_10></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,10) target=_top>&#64376;</A><A name=81_11></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,11) target=_top>&#64377;&#64378;&#64379;&#64380;</A><A name=81_12></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,12) target=_top>&#64381;&#64382;&#64383;&#64384;</A><A name=81_13></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,13) target=_top>&#64385;&#64386;</A><br><A name=81_13></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,13) target=_top>&#64387;&#64388;</A><A name=81_14></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,14) target=_top>&#64389;&#64390;&#64391;&#64392;&#64393;</A><A name=81_15></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,15) target=_top>&#64394;&#64395;&#64396;&#64397;</A><br><A name=81_16></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,16) target=_top>&#64398;&#64399;&#64400;</A><A name=81_17></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,17) target=_top>&#64401;&#64402;&#64403;&#64404;</A><A name=81_18></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,18) target=_top>&#64405;&#64406;&#64407;&#64408;</A><br><A name=81_19></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,19) target=_top>&#64409;&#64410;&#64411;&#64412;&#64413;</A><A name=81_20></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,20) target=_top>&#64414;&#64415;&#64416;&#64417;&#64418;&#64419;&#64420;</A><A name=81_21></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,21) target=_top>&#64421;</A><br><A name=81_21></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,21) target=_top>&#64422;&#64423;&#64424;</A><A name=81_22></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,22) target=_top>&#64425;&#64426;&#64427;&#64428;</A><A name=81_23></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,23) target=_top>&#64429;&#64430;&#64431;&#64432;</A><br><A name=81_23></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,23) target=_top>&#64433;</A><A name=81_24></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,24) target=_top>&#64467;&#64468;&#64469;&#64470;&#64471;&#64472;</A><A name=81_25></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,25) target=_top>&#64473;&#64474;&#64475;&#64476;&#64477;&#64478;</A><br><A name=81_26></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,26) target=_top>&#64479;&#64480;&#64481;</A><A name=81_27></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,27) target=_top>&#64482;&#64483;&#64484;&#64485;&#64486;&#64487;</A><A name=81_28></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,28) target=_top>&#64488;&#64489;&#64490;&#64491;</A><br><A name=81_28></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,28) target=_top>&#64492;&#64493;</A><A name=81_29></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(81,29) target=_top>&#64494;&#64495;&#64496;&#64497;&#64498;&#64499;&#64500;&#64501;&#64502;</A>

<CENTER>
<TABLE dir=ltr cellSpacing=0 cellPadding=0 width="412" border=0>
					                    <TBODY>
				                    <TR>
					<td width=100% align="center" dir=rtl height=49 background="/Quran/Images/frame.gif" >
</span><SPAN align="center" class=sc_F1>&#64396;&#64511;</span>
</TD></TR></TBODY></TABLE></CENTER>

																</SPAN>
					</span>
</TD></TR></TBODY></TABLE></BODY>
				</td>
			</tr>
		</table>
		</td>
		<td width=23 height=725 background="/Quran/Images/right.jpg" ><br></td>
	</tr><tr>
<td width=499 height=22 colspan=3 >
<img width=499  height=22 src="/Quran/Images/down.jpg" ><br></td>
</tr>

<tr>
<td colspan=3 align="center" ><b><Font Size="4"> &#x0665;&#x0668;&#x0666; </Font></b></td>
</tr>

</table>


				</TD>
			</TR>
		</TABLE>
		</td>
	</tr>
</table>

</div>

</DIV>
</BODY>
</HTML>

