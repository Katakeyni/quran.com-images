
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
var nCurrSora      =2;
var nCurrAya       =177;
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
		var StrPage = "027";
		var strLength="160144";
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
				
<table border="0" align=center cellpadding="0" align=center cellspacing="0" bgcolor="#FFFFff">
<tr>
<!-- 
<td valign="top" WIDTH=5%>&nbsp;</td> 
-->

<!-- Print-->
<td valign="top" ><IMG width=40 src="/Quran/Images/space.jpg"></td>

<td>
<!-- MFD -->

<table border="0" cellpadding="0" align=center cellspacing="0" bgcolor="#FFFFff">


<tr>
<td colspan=3>
<table border="0" cellpadding="0" align=center cellspacing="0" WIDTH=100%>
<tr><td align=left dir=rtl>
<SPAN class=sc_F1>&#64396;&#64398;</span>
<td>&nbsp;</td>
<td align=right dir=rtl><SPAN class=sc_F1>&#64568;&#64570;</span>
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
					.sc_F0 {FONT-FAMILY:QCF_P027; FONT-SIZE: 22pt; mso-font-charset: 0}
					.sc_F1 {FONT-FAMILY:QCF_BSML; FONT-SIZE: 20pt; mso-font-charset: 0}

					</STYLE>
					<STYLE>
					<!--
					 	@font-face {
						font-family: QCF_P027;
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
							<SPAN class=sc_F0 style='line-height:165%'> <A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64337;&#64338;&#64339;&#64340;&#64341;&#64342;&#64343;&#64344;&#64345;&#64346;</A><br><A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64347;&#64348;&#64349;&#64350;&#64351;&#64352;&#64353;&#64354;</A><br><A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64355;&#64356;&#64357;&#64358;&#64359;&#64360;&#64361;&#64362;</A><br><A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64363;&#64364;&#64365;&#64366;&#64367;&#64368;&#64369;</A><br><A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64370;&#64371;&#64372;&#64373;&#64374;&#64375;&#64376;&#64377;</A><br><A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64378;&#64379;&#64380;&#64381;&#64382;&#64383;&#64384;&#64385;&#64386;</A><br><A name=2_177></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,177) target=_top>&#64387;&#64388;&#64389;&#64390;&#64391;&#64392;</A><A name=2_178></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,178) target=_top>&#64393;&#64394;&#64395;&#64396;</A><br><A name=2_178></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,178) target=_top>&#64397;&#64398;&#64399;&#64400;&#64401;&#64402;&#64403;&#64404;&#64405;&#64406;</A><br><A name=2_178></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,178) target=_top>&#64407;&#64408;&#64409;&#64410;&#64411;&#64412;&#64413;&#64414;&#64415;&#64416;&#64417;</A><br><A name=2_178></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,178) target=_top>&#64418;&#64419;&#64420;&#64421;&#64422;&#64423;&#64424;&#64425;&#64426;&#64427;&#64428;</A><br><A name=2_178></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,178) target=_top>&#64429;&#64430;&#64431;&#64432;&#64433;&#64467;</A><A name=2_179></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,179) target=_top>&#64468;&#64469;&#64470;&#64471;</A><br><A name=2_179></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,179) target=_top>&#64472;&#64473;&#64474;&#64475;&#64476;</A><A name=2_180></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,180) target=_top>&#64477;&#64478;</A><br><A name=2_180></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,180) target=_top>&#64479;&#64480;&#64481;&#64482;&#64483;&#64484;&#64485;&#64486;&#64487;</A><br><A name=2_180></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,180) target=_top>&#64488;&#64489;&#64490;&#64491;&#64492;&#64493;&#64494;</A><A name=2_181></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,181) target=_top>&#64495;&#64496;</A><br><A name=2_181></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(2,181) target=_top>&#64497;&#64498;&#64499;&#64500;&#64501;&#64502;&#64503;&#64504;&#64505;&#64506;&#64507;&#64508;&#64509;&#64510;</A></SPAN>
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
<td colspan=3 align="center" ><b><Font Size="4"> &#x0662;&#x0667; </Font></b></td>
</tr>

</table>
<!-- MFD -->
</td>

<td valign="top"  > 
<table border="0" cellpadding="0" align=center cellspacing="0" bgcolor="#FFFFFF" style='margin-left:3.0pt'>
<tr height=0><td >&nbsp;</td></tr>
<TR><TD><IMG src="/Quran/Images/hezb-2.jpg" WIDTH=53 HEIGHT=103></TD></TR>
<TR><TD><IMG src="/Quran/Images/hezb03.jpg" WIDTH=53 HEIGHT=16></TD></TR>
<TR><TD><IMG src="/Quran/Images/hezb-dwn2.jpg" WIDTH=53 HEIGHT=6></TD></TR>
</TABLE>
</td>
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

