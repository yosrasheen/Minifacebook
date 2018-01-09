<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteAlbum.aspx.cs" Inherits="deleteAlbum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir=ltr>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- Delete Album</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 

</head> 
<body>
<form id="Form1" runat="server">
<div id="userlinksguest">
	<table border="0" width="100%" id="table2" height="70" bgcolor=#A3AED9>
		<tr>
			<td>
			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="800" height="70">
				<param name="movie" value="images/Movie1flash.swf">
				<param name="quality" value="High">
				<embed src="images/Movie1flash.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object></td>
		</tr>
	</table>


	<div class="borderwrap">
		<div class="maintitle">
			<img border="0" src="images/familylogo.gif" width="500" height="125">
            <table id="table1" border="0" width="100%">
                <tr>
                    <td colspan="2">
                        <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="ContactUs.aspx">
                            contact Us</a>&nbsp; |&nbsp; <a href="news.aspx">News</a> | <a href="member.aspx">Member</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 50%; height: 18px">
                        <asp:Button ID="btnLogout" runat="server" BorderStyle="None" OnClick="btnLogout_Click"
                            Style="background-color: transparent" Text="Logout" />
                    </td>
                    <td align="right">
                        <span style="font-size: 10pt">Welcome </span><span id="n" runat="server"></span>
                    </td>
                </tr>
            </table>
		</div>
		
		<center>
		<table class='ipbtable' cellspacing="0" align='center' width="100%">
			<tr>
				<td  valign="top" class='row2' align='center'>
					<fieldset align='middle' >
						<legend><b>&nbsp;</b></legend>
						<table class='ipbtable' cellspacing="0" width="100%">
							<tr>
								<td width="100%">
								<p align="center" style="text-align: center"><b>
								The album has been deleted successfully</b></td>
							</tr>
							</table>
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click"
                            Text="Back to the Albums >>>" />&nbsp;<br />
                    </fieldset>
				</td>
			
			</tr>
		</table>
		</center>
	</div>

 
<p class="pcen">
    <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="ContactUs.aspx">
        contact Us</a>&nbsp; |&nbsp; <a href="news.aspx">News</a> | <a href="member.aspx">Member</a>
</p>
<div class="copyright" align="center"> &nbsp;© all rights reserved.</div>
</div>
</form>
</body> 
</html>