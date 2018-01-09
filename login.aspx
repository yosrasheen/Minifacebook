<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ---- log In</title>
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

<form action="" name="LOGIN" onsubmit="return ValidateForm()">
	<div class="borderwrap">
		<div class="maintitle">
			<img border="0" src="images/familylogo.gif" width="500" height="125"><br />
            <table id="table1" border="0" width="100%">
                <tr>
                    <td  align="center" colspan="3"> 
                        <span style="color: #485a9a" class="pcen"><a href="default.aspx">Home</a> | <a href="aboutUs.htm">About Us</a>&nbsp;
                        |&nbsp; <a href="contactUs.aspx">Contact Us</a></span></td>
                </tr>
                <tr>
                    <td width="50%" align=left style="height: 18px">
                        <span style="font-size: 10pt">Family gathering web site&nbsp; </span>
                    </td>
                    <td align="right" colspan="2" style="height: 18px">
                        &nbsp;<font size="2"><b>Welcome <span id="Span1" runat="server"></span></b>Guest</font></td>
                </tr>
            </table>
			
		<table class='ipbtable' cellspacing="0">
			<tr>
				<td width="60%" valign="top" class='row2'>
					<fieldset>
						<legend><b>Log In</b></legend><form runat=server>
						<table class='ipbtable' cellspacing="1">
							<tr>

<td style="width: 34%"><b>Enter your user name</b></td>
								<td width="50%">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox></td>

							</tr>
							<tr>
								<td style="width: 34%"><b>Enter your password</b></td>
								<td width="50%">
                                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="218px" TextMode="Password"></asp:TextBox></td>
							</tr>
						</table>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:Button runat="server" class="button"  id="submit" text="Log me in" OnClick="submit_Click" />
                            <input id="Reset1" type="reset"  class="button" value="reset" />
                    </fieldset>
                    <span style="font-size: 8pt; color: #646c8a"></span>
				</td>
				<td width="40%" valign="top" class='row2' style="font-size: 8pt; color: #646c8a">
					<fieldset>
						<legend><b>Options</b></legend>
						<table class='ipbtable' cellspacing="1">
							<tr>
								<td width="10%">
                                    <asp:CheckBox ID="CheckBox1" runat="server" 
                                        Width="16px" /></td>
								<td width="90%"><b>Remember me?</b><br /><span class="desc" style="color: #485a9a">
								This is not recommended for shared computers</span></td>
							</tr>

						</table>
					</fieldset>
					<fieldset>
						<legend><b>Register</b></legend>
						<table class='ipbtable' cellspacing="1" id="table3">
							<tr>
                                <td colspan="2">
                                    &nbsp;New to this we<span style="color: #485a9a">bsit</span>e?!<span style="color: #485a9a">
                                    </span>
								<p><a href="registeration.aspx">Register</a><span style="color: #485a9a"> </span>
                                </td>
							</tr>

						</table>
					</fieldset>
					<p>&nbsp;</p>
					<p>&nbsp;</td>
			</tr>
			<tr>
				<td class="formbuttonrow" colspan="2">
                    &nbsp;</td>
			</tr>
			<tr>
				<td class="catend" colspan="2">
				<p align="center" style="text-align: center"><a href="default.aspx">Home</a> | <a href="aboutUs.htm">About Us</a>&nbsp; |&nbsp;
				<a href="contactUs.aspx">Contact Us</a> </td>
			</tr>
		</table>
            <br />
        </div>
		<div class='row2'>
            &nbsp;</div>
	</div>
</form>
 

<div class="copyright" align="center">&nbsp;© all rights reserved.</div>
</div>

</body> 
</html>