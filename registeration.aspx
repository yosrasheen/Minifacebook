<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registeration.aspx.cs" Inherits="registeration" ValidateRequest="false" EnableEventValidation="false" %>

 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- Become a member!</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>
<form runat="server" id="Form1">
<div id="userlinksguest">

	<table border="0" width="100%" id="headertable"  bgcolor="#A3AED9">
		<tr>
			<td>
			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="800" height="70">
				<param name="movie" value="images/Movie1flash.swf">
				<param name="quality" value="High">
				<embed src="images/Movie1flash.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="160" height="160"></object></td>
		</tr>
	</table>

	<div class="borderwrap">
	<div id="divlinks" class="maintitle">
			<img border="0" src="images/familylogo.gif" width="500" height="125" alt="" />
            <table id="links" border="0" width="100%">
                <tr>
                    <td colspan="2" style="height: 18px">
                        <a href="default.aspx">Home</a> | <a href="aboutUs.htm">About Us</a>&nbsp; | 
	<a href="contactUs.aspx">contact Us</a></td>
                </tr>
                <tr>
                    <td width="50%" align=left>
                        <span style="font-size: 10pt">Family gathering web site&nbsp; </span>
                    </td>
                    <td align=right style="width: 50%">
                        <span style="font-size: 10pt">Welcome Guest</span></td>
                </tr>
            </table>
		</div>
		    <table class="ipbtable" cellspacing="0" align="center" width="100%">
			<tr>
				<td  valign="top" class='row2' align='center' style="width: 988px" >
					<fieldset align='middle' >
						<legend><b>Registeration </b></legend>
		<table id="attention" class='ipbtable' cellspacing="0" width="100%">
			<tr>
				<td style="height: 18px">

												<div class="errorwrap" style="margin: 0px; padding-bottom: 0px">
													<h4>Attention!</h4>
													<p style="text-align: left">
													Please ensure that you 
													complete all the fields 
													fully, taking particular 
													care over the password 
													fields.</p></div>
													</td></tr></table>
											
												<table id="tableusername"class="ipbtable" cellSpacing="0" >
		<tr>
			<td vAlign="top" width="50%" style="height: 343px">
			<fieldset id="username" class="row3">
			<legend><b>User Name:</b></legend>
			<div class="input-warn-content" id="boxun"  runat="server" visible="false">
                &nbsp;</div>
														<table class="ipbtable" cellSpacing="0" id="table4">
															<tr>
					<td>Enter your 
																desired <strong>
																log in</strong> 
																username:(<a title="This is the name you'll use to log in. [4 to 20 characters long]" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td>
                      <asp:TextBox ID="txtUn" runat="server" Width="312px" MaxLength="20"></asp:TextBox></td>
															</tr>
														</table>
														</fieldset><br />
											<fieldset id="password" class="row3">
														<legend><b>Password:</b> </legend>
														<div class="input-warn-content" id="boxpswd"  runat="server">
                                                            &nbsp;</div>
														<table class="ipbtable" cellSpacing="0" id="table6">
															<tr>
																<td noWrap width="101%">
																Enter your 
																password &nbsp;(<a title="Passwords must be between 8 and 20 characters long" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td>
                                                                    &nbsp;<asp:TextBox ID="txtpswd" runat="server" Width="312px" MaxLength="20" TextMode="Password"></asp:TextBox></td>
															</tr>
															<tr>
																<td style="height: 29px">
														<div class="input-warn-content" id="boxpswdc"  runat="server">
                                                            &nbsp;</div>
																</td>
															</tr>
															<tr>
																<td>Confirm Password 
																&nbsp;(<a title="Please re-enter your password: It must match exactly" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td>
                                                                    <asp:TextBox ID="txtpswdco" runat="server" Width="312px" MaxLength="20" TextMode="Password"></asp:TextBox></td>
															</tr>
														</table>
														</fieldset><br>
											<fieldset id="email" class="row3">
														<legend><b>Email Address:</b> </legend>
														<div class="input-warn-content" id="boxemail"  runat="server">
                                                            &nbsp;</div>
														<table class="ipbtable" cellSpacing="0" id="table20">
															<tr>
																<td noWrap width="100%">
																Enter your 
																Email Address &nbsp;(<a title="Email must be between 10 to 20 characters long" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td>
                                                                    <asp:TextBox ID="txtEmail" runat="server" Width="312px" MaxLength="20"></asp:TextBox></td>
															</tr>
															<tr>
																<td>
														<div class="input-warn-content" id="boxEmailc"  runat="server">
                                                            &nbsp;</div>
																</td>
															</tr>
															<tr>
																<td style="height: 13px">Confirm your 
																Email Address 
																&nbsp;(<a title="Please re-enter your Email: It must match exactly" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td style="height: 44px">
                                                                    <asp:TextBox ID="txtEmailc" runat="server" Width="312px" MaxLength="20"></asp:TextBox></td>
															</tr>
														</table>
														</fieldset><br /><br />
														<fieldset class="row3">
                                                            <legend><b>Enter your Date of Birth</b> </legend><table class="ipbtable" cellSpacing="0" id="Table5">
                                                                <tr>
                                                                    <td>
                                                                        <div class="input-warn-content" id="boxDate"  runat="server">
                                                                            &nbsp;</div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br />
                                                            &nbsp;dd / mm / yy&nbsp; ( ? )<br />
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
                                                        </fieldset>
                <td vAlign="top" align="left" style="width: 50%; height: 343px;">
															<fieldset  align=center>
														<legend><b>Personal 
														Information:</b></legend>
														
														<table class="ipbtable" cellSpacing="0" id="table15" height="69">
															<tr>
					<div class="input-warn-content" id="boxFN"  runat=server align=center>
                                                            &nbsp;</div>											<td align="center">Enter your 
																First Name &nbsp;(<a title="This is the name you'll use to log in. [8 to 20 characters long]" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td align="center">
                                                                    <asp:TextBox ID="txtfname" runat="server" Width="312px" MaxLength="20"></asp:TextBox></td>
															</tr>
														</table>
														
														<table class="ipbtable" cellSpacing="0" id="table16">
															<tr>
					<div class="input-warn-content" id="boxln"  runat=server align=center>
                                                            &nbsp;</div>											<td align="center">Enter your 
																Last Name &nbsp;(<a title="This is the name shown with all your topics and posts. Between 8 and 20 chars. Illegal chars: [ ] | ; ,  $ \ &lt; &gt; &quot;" style="cursor: help" href="#">?</a>)</td>
															</tr>
															<tr>
																<td style="height: 50px" align="center">
                                                                    &nbsp;<asp:TextBox ID="txtlname" runat="server" Width="312px" MaxLength="20"></asp:TextBox></td>
															</tr>
														</table>
														<table class="ipbtable" cellspacing="0" id="table19">
				<tr>
                  <td style="height: 289px" align="center">
                   Forum Terms & Rules <br />											<textarea rows="20" name="S1" cols="80" readonly="readonly">If you cant Respect other people, places, things, and you feel talking rubbish is ok, Please do not join familyAlbum.Com , Respect for everybody is a compulsion, No matter what gender/caste/race/nationality " 

1. This forum is a place for Discussing, Writing, Reading, about everything , 
2. If you are seeking for any foolish activities, Please DO NOT join the forum, This is not a place for you. There are many places instead. 
3. By Joining you agree that you will help keeping this Forum better, Clean, Knowledgeable, Respectfull, 
4.By joining you agree to keep every Nation, Every Religion, Evert Cast and Race Dignified. We are here joined to talk about positiveness none of hatred or discourage will be tolerated at all. 
5. Please remember that we are not responsible for any messages posted. We do not vouch for or warrant the accuracy, completeness or usefulness of any message, and are not responsible for the contents of any message. 
6. You agree, through your use of this service, that you will not use this bulletin board to post any material which is knowingly false and/or defamatory, inaccurate, abusive, vulgar, hateful, harassing, obscene, profane, sexually oriented, threatening, invasive of a person's privacy, or otherwise violative of any law. 
7. We welcome you to the forum, But please remember joining this forum has avantages as well as responsibilities, You need to be more cautious about what you write as its a public place, So please think before you post anything. 
8. No Talks about pirated/warez/torrents is allowed on the IF forum, If you attempt to mistakenly do this, your post will be edited and if you attempt to to it again it will end in warns. 
9. No one should explicit calling other people foul names. 
10. Not allowed in using vulgar words. 
11. No posts made to hurt back. if you have complaints or suggestions put it in question and suggestion board or should addressed to admin. 
12. No spamming like replying yes, thats good, very nice, and etc. be creative in replying. 
13. No posting of personal contact info. why not use personal msg or pm. 
On The whole The objective of Www.familyalbum.Com Community is to provide a clean and wonderful environment where you can have fun, a great time with fellow members, Some knowledge, Some Art, Some cultural and multi-cultural Experience, Please take care of your language and dont use loose words because we have all age group members and both gender equally.</textarea>
                                                                <asp:CheckBox ID="CheckBox1" runat="server"   Text="I agree to the terms of this registration and wish to proceed." Width="532px" />
              </td>
          </tr>
          <tr>											<td colspan="2" align="right" style="height: 45px">
                <asp:Button ID="Button1" runat="server" Text="Submit My Registration >>>" class="button" OnClick="Button1_Click" style="text-align:right"/>&nbsp;</td>
		</tr>
	</table>													
</fieldset>
 
 
                                                            </fieldset>
  </div>
 </div>
                &nbsp;
                &nbsp;</form>
<span style="color: #485a9a">© all rights reserved. </span>
    
    
</body> 
</html>