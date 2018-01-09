<%@ Page Language="C#" AutoEventWireup="true" CodeFile="member.aspx.cs" Inherits="member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ---- Member Control Panel</title>
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
				<param name="movie" value="images/Movie1flash.swf">
				<param name="quality" value="High">
				<embed src="images/Movie1flash.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object></td>
		</tr>
	</table>


	<div class="borderwrap">
		<div class="maintitle">
			<img border="0" src="images/familylogo.gif" width="500" height="125">
			<form runat="server" id="Form1"><table border="0" width="100%" id="table3">
				<tr>
                    <td align="center" colspan="2" style="height: 1px">
                        <a href="aboutUs.htm">About Us</a>&nbsp; |&nbsp; <a href="contactUs.aspx">Contact Us</a><b> 
                    </td>
				</tr>
                <tr>
                    <td align="left" style="width: 50%">
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" BorderStyle="None" style="background-color:Transparent" OnClick="btnLogout_Click" Font-Bold="True"/>              
                    </td>
                    <td align="right" >
                        Welcome  <span runat="server" id="n" ></span></td>
                </tr>
			</table></form>
		</div>
		<div class='row2'>
			
		<table class='ipbtable' cellspacing="0">
			<tr>
				<td width="97%" valign="top" class='row2' style="height: 160px">
					<fieldset>
						<br /><legend><b>What do you want to do? </b></legend><br />  
						<table align="left" class='ipbtable' cellspacing="1">
							<tr align="left">
								<td style="width: 15%">
                                    <b>News</b></td>
								<td width="83%">
								<b><span style="color: #485a9a">&nbsp;<a href="news.aspx">View</a></span></b></td>
							</tr>

							<tr align="left">
								<td style="width: 15%; height: 22px">
                                    <b>Profile</b></td>
								<td width="83%" style="height: 22px">
								<b>&nbsp;<span style="color: #485a9a"><a href="profile.aspx">View</a></span>&nbsp; | &nbsp;&nbsp;&nbsp;
								<a href="EditProfile1.aspx">Edit</a>&nbsp;</b></td>
							</tr>

							<tr align="left">
								<td style="width: 15%">
                                    <b>Albums</b></td>
								<td width="83%"><b>&nbsp;<a href="albums.aspx">View</a> &nbsp;|&nbsp;&nbsp;
								&nbsp;&nbsp;
								<a href="AddAlbum.aspx">Create New</a> </b></td>
							</tr>

						</table>
					</fieldset>
					</td>
			</tr>
			
			<tr align="left">
				<td class="catend" style="height: 20px">
				<p align="center" style="text-align: center">
				<a href="aboutUs.htm">About Us</a>&nbsp; |&nbsp;
				<a href="contactUs.aspx">Contact Us</a></td>
			</tr>
		</table>
	</div>
	</div>
 

<div class="copyright" align="center">&nbsp;© all rights reserved.</div>

</body> 
</html>