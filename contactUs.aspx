<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering -------- Contact us</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>
<form runat=server>
<table border="0" width="100%" id="table2" height="70" bgcolor=#A3AED9>
		<tr>
			<td>
			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="800" height="70">
				<param name="movie" value="images/Movie1flash.swf">
				<param name="quality" value="High">
				<embed src="images/Movie1flash.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object></td>
		</tr>
	</table>

<div id="userlinksguest">
		<div class="borderwrap"><div class="maintitle">
			
			
			<img border="0" src="images/familylogo.gif" width="500" height="125"><table border="0" width="100%" id="table1">
				<tr>
                    <td colspan="2">
                        <a href="default.aspx"><font size="1">Home</font></a><font size="1">&nbsp; | <a href="aboutUs.htm">
                            About Us</a><a href="aboutUs.htm"> </a>| <a href="member.aspx">Member</a> | <a href="news.aspx">
                                News</a></font></td>
				</tr>
                <tr>
                    <td style="height: 18px" width="50%" align=left>
                        <span style="font-size: 10pt">Family gathering web site&nbsp; </span>
                    </td>
                    <td style="width: 50%; height: 18px" align=right>
                        <span style="font-size: 10pt">Welcome </span><span runat=server id=n></span>
                    </td>
                </tr>
			</table>
			</div>


		
		
		<table class='ipbtable' cellspacing="0">
			<tr>
				<td valign="top" class='row2' style="width: 59%">
					<fieldset>
						<legend><b>Contact US </b></legend>
						<table class='ipbtable' cellspacing="1">
							<tr>

<td width="100%">
<div class='maintitle'>
<table border="0" width="100%" id="table3">
	<tr>
		<td width="185">Subject:</td>
		<td align="left">&nbsp;<asp:TextBox ID="txtSubject" runat="server" Width="418px"></asp:TextBox></td>
	</tr>
	<tr>
		<td width="185">Comment:</td>
		<td align="left">&nbsp;<asp:TextBox ID="txtComment" runat="server" Height="99px" TextMode="MultiLine" Width="418px"></asp:TextBox><br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
	</tr>
</table></div>
<p style="text-align: center">
    <asp:Button ID="btnSend" runat="server" Text="Send your Comment" BorderStyle="None" OnClick="btnSend_Click" />
    &nbsp;</td>

							</tr>
							</table>
					</fieldset>
				</td>
			
			</tr>
						
		</table>
	</div>

 

<div class="copyright" align="center"><b><a href="default.aspx"><font size="1">Home</font></a><font size="1">&nbsp; | 
	<a href="aboutUs.htm">About Us</a><a href="aboutUs.htm">
	</a> | <a href="member.aspx">Member</a> | <a href="news.aspx">News</a></font></b><p style="text-align: center">&nbsp;© all rights reserved.</div>
</div>
</form>
</body> 
</html>