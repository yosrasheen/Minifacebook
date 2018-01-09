<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Debug="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>

<div id="userlinksguest">
	<table border="0" width="100%" id="table2"  bgcolor="#A3AED9">
		<tr>
			<td>
			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="800" height="70">
				<param name="movie" value="images/Movie1flash.swf" />
				<param name="quality" value="High" />
				<embed src="images/Movie1flash.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object></td>
		</tr>
	</table>


	<div class="borderwrap">
		<div class="maintitle">
			<img border="0" src="images/familylogo.gif" width="500" height="125"><table border="0" width="100%" id="table1">
				<tr>
                    <td align="center" colspan="3">
                        <a href="aboutUs.htm">About Us</a>&nbsp; | 
	<a href="contactUs.aspx">contact Us</a></td>
				</tr>
                <tr>
                    <td width="50%" align=left>
                        <span style="font-size: 10pt">
					Family gathering web site&nbsp; </span>
                    </td>
                    <td align="right" colspan="2">
                        &nbsp;<font size="2"><b>Welcome <span runat=server id=name></span></b> ( 
	<a href="login.aspx">Log In</a> )</font> 
                    </td>
                </tr>
			</table>
		</div>
		<div class='row2'>
			
			<div class="errorwrap" style='margin-bottom:0px;padding-bottom:0px'>
				<h4>Attention!</h4>
				<p align=left style="text-align: left">Our web site will provide one common platform for family members to communicate and interact with each other.		Any member of this web site can upload photos, 
				and share events about family matters. As a guest, you can see 
				only the shared news and photos.&nbsp; Membership is closed, 
				only the registered members can use the full features of the 
				website.&nbsp; </p>
			</div>
		</div>
		<form runat=server>
		<table class='ipbtable' cellspacing="0"width="80%">
			<tr>
				<td width="50%" valign="top" class='row2' style="height: 307px">
					<fieldset>
						<legend><b>Recent News </b></legend>
						<table class='ipbtable' cellspacing="1">
							<tr>

<td width="100%">
    <asp:TextBox ID="TextBox1" runat="server" Width="90%" BorderStyle="None" BackColor="Transparent"></asp:TextBox></td>

							</tr>
							<tr>
								<td width="100%"><b>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="90%" BorderStyle="None" BackColor="Transparent"></asp:TextBox></b></td>
							</tr>
							<tr>
								<td width="100%"><b>
                                    <asp:TextBox ID="TextBox3" runat="server" Width="90%" BorderStyle="None" BackColor="Transparent"></asp:TextBox></b></td>
							</tr>
							<tr>
								<td width="100%"><b>
                                    <asp:TextBox ID="TextBox4" runat="server" Width="90%" BorderStyle="None" BackColor="Transparent"></asp:TextBox></b></td>
							</tr>
							<tr>
								<td width="100%"><b>
                                    <asp:TextBox ID="TextBox5" runat="server" Width="90%" BorderStyle="None" BackColor="Transparent"></asp:TextBox></b></td>
							</tr>
							<tr>
								<td width="100%" style="height: 26px" align="left"><b><a href="news.aspx">more ..... </a></b></td>
							</tr>
						</table>
					</fieldset>
				</td>
				<td width="30%" valign="top" class='row2' style="height: 307px">
					<fieldset>
						<legend><b>Recent Albums</b></legend>
						<table class='ipbtable' cellspacing="1">
							<tr>
								<td width="100%">
                                    <asp:TextBox ID="TextBox6" runat="server" BackColor="Transparent" BorderStyle="None"
                                        Width="90%"></asp:TextBox></td>
							</tr>

							<tr>
								<td width="100%">
                                    <asp:TextBox ID="TextBox7" runat="server" BackColor="Transparent" BorderStyle="None"
                                        Width="90%"></asp:TextBox></td>
							</tr>

							<tr>
								<td width="100%">
                                    <asp:TextBox ID="TextBox8" runat="server" BackColor="Transparent" BorderStyle="None"
                                        Width="90%"></asp:TextBox></td>
							</tr>

							<tr>
								<td width="100%" align="left"><b><a href="albums.aspx">more ..... </a></b></td>
							</tr>

						</table>
					</fieldset>
                    &nbsp;
				</td>
			</tr>
			
			
		</table>
		</form>
	</div>
<div class="copyright" align="center"> 
    <span style="color: #485a9a"><a href="aboutUs.htm">About Us</a>&nbsp; | <a href="contactUs.aspx">contact
        Us</a></span><br />
    &nbsp;© all rights reserved.</div>
</div>

</body> 
</html>