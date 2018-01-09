<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile1.aspx.cs" Inherits="EditProfile1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir=ltr>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- Edit Profile</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>
<form runat="server">
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
			<img border="0" src="images/familylogo.gif" width="500" height="125"><TABLE id="table1" width="100%" border=0><TBODY><TR><TD colSpan=2 style="height: 18px"><A href="default.aspx">Home</A> |<A href="aboutUs.htm">About Us</A>&nbsp; | <A href="contactus.aspx">contact Us</A>&nbsp; |&nbsp; <A href="news.aspx">News</A> | <A href="member.aspx">Member</A></TD></TR><TR><TD style="WIDTH: 50%; HEIGHT: 18px" 
align=left>
                
                <asp:Button ID="btnLogout" runat="server" BorderStyle="None" OnClick="btnLogout_Click" Style="background-color: transparent" Text="Logout" /></TD><TD align=right><SPAN 
style="FONT-SIZE: 10pt">Welcome </SPAN><SPAN 
id="n" 
runat="server"></SPAN></TD></TR></TBODY></TABLE>
		<table class='ipbtable' cellspacing="0" align='center' width="100%">
			<tr>
				<td  valign="top" class='row2' align='left' style="height: 94px">
					<fieldset align='middle' >
						<legend><b>Your Profile </b></legend>
					<br />	
<fieldset align='middle'  >
						<legend><b>Personal Data </b></legend>

						<table class='ipbtable' cellspacing="0" width="80%" align=left>
							<tr>
								<td style="width: 20%; height: 44px;">First name:</td>
								<td width="80%" style="height: 44px">&nbsp;<asp:TextBox ID="txtfn" runat="server"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="width: 16%">Last name:</td>
								<td width="50%">&nbsp;<asp:TextBox ID="txtln" runat="server"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="width: 16%">Date of Birth:</td>
								<td width="50%">&nbsp;&nbsp; &nbsp;dd &nbsp; &nbsp;/ &nbsp; &nbsp;mm &nbsp; &nbsp; / &nbsp;&nbsp;
                                    yy &nbsp;<br />
                                    <br />
                                    &nbsp;<asp:DropDownList ID="ddlDay" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                    </asp:DropDownList>/
                                    <asp:DropDownList ID="ddlMonth" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                    /
                                    <asp:DropDownList ID="ddlYear" runat="server">
                                        <asp:ListItem>1973</asp:ListItem>
                                        <asp:ListItem>1974</asp:ListItem>
                                        <asp:ListItem>1975</asp:ListItem>
                                        <asp:ListItem>1976</asp:ListItem>
                                        <asp:ListItem>1977</asp:ListItem>
                                        <asp:ListItem>1978</asp:ListItem>
                                        <asp:ListItem>1979</asp:ListItem>
                                        <asp:ListItem>1980</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem Selected="True">1990</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>
                                        <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                        <asp:ListItem>2002</asp:ListItem>
                                        <asp:ListItem>2003</asp:ListItem>
                                        <asp:ListItem>2004</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
							</tr>
							<tr>
								<td style="width: 16%">Email Address:</td>
								<td width="50%">&nbsp;<asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
							</tr>
							</table>
							</fieldset>
							<fieldset align='middle' >
						<legend><b>Membership Data </b></legend>
							<table class='ipbtable' cellspacing="0" width="100%">
							<tr>
							<td style="width: 20%"> Username </td>
							<td style="width: 80%">&nbsp;<asp:TextBox ID="txtun" runat="server" ReadOnly="True"></asp:TextBox></td>
							</tr>
							<tr>
							<td style="width: 154px"> Password</td>
							<td>&nbsp;<asp:TextBox ID="txtpswd" runat="server" TextMode="Password"></asp:TextBox></td>
							</tr>
							</table>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label></fieldset>
                     
						<table border=0 width="100%"><tr><td align=center>
						<asp:Button ID="Button1" runat="server" class="button" Text="Update my data" style="text-align:center" OnClick="Button1_Click"/>&nbsp;</td></tr></table></fieldset>
				</td>
			
			</tr>
		</table>
            <br />
   <a href="default.aspx"> Home</a> | <a href="aboutUs.htm">About Us</a>&nbsp; |&nbsp; 
    <a href="contactUs.aspx">Contact Us</a> |&nbsp; <a href="news.aspx">
        News</a><a href="aboutUs.htm"></a> |&nbsp; &nbsp;<A href="default.aspx">Member</A></div>
	</div>
<div class="copyright" align="center"> &nbsp;© all rights reserved.</div>
</div>
</form>
</body> 
</html>