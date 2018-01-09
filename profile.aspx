<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir=ltr>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- Profile</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>
<form runat=server>
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
			<img border="0" src="images/familylogo.gif" width="500" height="125"><table border="0" width="100%" id="table1">
				<tr>
                    <td colspan="2">
                        <A href="default.aspx">Home</A> |<A href="aboutUs.htm">About Us</A>&nbsp; | contact Us&nbsp; |&nbsp; <A href="news.aspx">News</A> | <A href="member.aspx">Member</A></td>
				</tr>
                <tr>
                    <td align="left" style="width: 50%; height: 18px"><asp:Button ID="btnLogout" runat="server" BorderStyle="None"                        Style="background-color: transparent" Text="Logout" OnClick="btnLogout_Click" />
                    </td>
                    <td align=right>
                        <span style="font-size: 10pt">Welcome </span><span runat=server id=n></span>
                    </td>
                </tr>
			</table>
		</div>
		
		<center>
		<table class='ipbtable' cellspacing="0" align='center' width="100%">
			<tr>
				<td  valign="top" class='row2' align='center' style="height: 152px">
					<fieldset align='middle' >
						<legend><b>Your Profile </b></legend>
						<table class='ipbtable' cellspacing="0" width="100%">
							<tr>
								<td width="30%" align="left"><b>First name:</b></td>
								<td width="80%" align="left">&nbsp;<asp:TextBox ID="txtfn" runat="server" ReadOnly="True" Width="394px"></asp:TextBox></td>
							</tr>
							<tr>
								<td align="left"><b>Last name:</b></td>
				
								<td  align="left">&nbsp;<asp:TextBox ID="txtln" runat="server" ReadOnly="True" Width="394px"></asp:TextBox></td>
							</tr>
			
	
							<tr>
								<td align="left"><b>Password:</b></td>
								<td  align="left">&nbsp;<asp:TextBox ID="txtpswd" runat="server" ReadOnly="True" Width="394px"></asp:TextBox></td>
							</tr>
							<tr>
								<td  align="left"><b>Email</b></td>
								<td  align="left">&nbsp;<asp:TextBox ID="txtemail" runat="server" ReadOnly="True" Width="394px"></asp:TextBox></td>
							</tr>
							</table>
					</fieldset>
		</table>
		</center>
	</div>

 
<p class="pcen"><A href="default.aspx">Home</A> |<A href="aboutUs.htm">About Us</A>&nbsp; | contact Us&nbsp; |&nbsp; <A href="news.aspx">News</A> | <A href="member.aspx">Member</A></p>
    <p class="pcen">
        &nbsp;© all rights reserved.</p>
</div>
</form>
</body> 
</html>