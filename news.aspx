<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- news</title>
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
				<param name="movie" value="images/Movie1flash.swf" />
				<param name="quality" value="High" />
				<embed src="images/Movie1flash.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object></td>
		</tr>
	</table>


	<!-- mem-->
	<div runat=server id=mem>
	<div class="borderwrap">
		<div class="maintitle">
			<table border="0" width="100%" id="table3">
				<tr>
					<td colspan="2" align="center">
				 <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | 
	<a href="contactUs.aspx">contact Us</a> &nbsp; | <a href="member.aspx">Member</a></td>
				</tr>
                <tr>
                    <td width="50%" align=left>
                        <asp:Button ID="btnLogout" runat="server" BorderStyle="None"                        Style="background-color: transparent" Text="Logout" OnClick="btnLogout_Click" />
                    </td>
                    <td width="50%" align=right>
                        <span style="font-size: 10pt">Welcome </span>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;</td>
                </tr>
			</table>
		</div>
		
		<center>
		<table class='ipbtable' cellspacing="0" align='center' width="100%">
			<tr>
				<td  valign="top" class='row2' align='center'>
					<fieldset align='middle' >
						<legend><b>Recent News </b></legend>
						<table class='ipbtable' cellspacing="0" width="100%">
							<tr>
								<td width="100%" style="height: 26px"><b>
                                    <asp:GridView ID="GridView2" runat="server" Width="100%" ShowHeader="False" DataSourceID="SqlDataSource2">
                                    </asp:GridView><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:familyPhotoConnectionString %>"
                            SelectCommand="SELECT [ntext] FROM [news] ORDER BY [nDate] DESC">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="True" Name="guest" Type="Boolean" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </b></td>
							</tr>
						</table>
					</fieldset>
				</td>
			
			</tr>
		</table>
		</center>
	</div></div>
	
<p class="pcen">
    <a href="default.aspx">Home</a> &nbsp;|<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="contactUs.aspx">contact Us</a>
    &nbsp; | <a href="member.aspx">Member</a>&nbsp;</p>
    <p class="pcen">
        © all rights reserved.</p>
</div>
</form>
</body> 
</html>