<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Albums.aspx.cs" Inherits="Albums" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- albums</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>
<form id="Form1" runat="server">
<div id="userlinksguest">
	<table id="animationtable" border="0" width="100%"  bgcolor="#A3AED9">
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
			<img border="0" src="images/familylogo.gif" width="500" height="125" alt="" />
            <table id="links" border="0" width="100%">
                <tr>
                    <td colspan="2">
                        <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="contactus.aspx">contact
                        Us</a>&nbsp; |&nbsp; <a href="news.aspx">News</a> | <a href="member.aspx">Member</a>
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
<table id="maintable" class='ipbtable' cellspacing="0" align='center' width="100%">
			<tr>
				<td  valign="top" class='row2' align='center' style="height: 354px">
				<fieldset>
<legend><b>Family Albums </b></legend>	
                    <br /><br /><br />
<fieldset><legend><b>My Own Albums </b></legend>   
<br />                 <table id="submain1" class='ipbtable' cellspacing="0" width="100%">
						
		<tr runat="server" id="owner">
								<td width="100%">
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%" DataKeyField="albumid" OnItemCommand="DataList1_ItemCommand">
                                        <ItemTemplate>
                                            <table width="100%">
                                                <tr>
                                                    <td style="width: 40%; height: 45px">
                                                      <asp:Button runat="server" Text='<%# Eval("[Album Name]") %>' Value='<%# Eval("[Album Name]") %>' ID="btnLink" BackColor="Transparent" BorderStyle="None" CommandName="select" Font-Underline="True"/>
                                                        <asp:HiddenField ID="hf" runat="server" Value='<%# Eval("albumid") %>' />
                                                        &nbsp;
                                                    </td>
                                                    <td style="width: 20%; height: 45px">
                                                        <asp:Label ID="lblDate" runat="server" Text='<%# Eval("[Creation Date]") %>'></asp:Label></td>
                                                    <td style="width: 20%; height: 45px">
                                                        <asp:Button ID="btnEdit" runat="server" CommandName="edit" Text="Edit The Album Name" />
                                                    </td>
                                                    <td style="width: 20%; height: 45px">
                                                        <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete the Album" /></td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:familyPhotoConnectionString %>"
                                        SelectCommand="SELECT albumid, UPPER(albumName) AS 'Album Name', CONVERT (varchar(20), DAY(albumDate)) + ' / ' + CONVERT (varchar(20), MONTH(albumDate)) + ' / ' + CONVERT (varchar(20), YEAR(albumDate)) AS 'Creation Date' FROM album WHERE (albumOwner = @albumOwner)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="albumOwner" SessionField="id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    &nbsp;&nbsp;
                                </td>
							</tr>
			</table>
							<br />
         <asp:Button ID="btnNew" runat="server" BorderStyle="None" CssClass="button" Text="Create new Album" OnClick="btnNew_Click" /><br />
							</fieldset>
                    <br />
                    <br />
 <fieldset ><legend><b>Other Members' Albums </b></legend>
       <br />
      
<table id="submain2" class='ipbtable' cellspacing="0" width="100%">
<tr runat="server" id= "member">
			
	<td width="100%">
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2"
            Width="100%" OnItemCommand="DataList2_ItemCommand">
            <ItemTemplate>
                <table width="75%" border=0>
                    <tr>
                        <td style="width: 75%; ; text-align:center; vertical-align: top;">
                    <asp:button ID="Album_Namebtn" runat="server" Text='<%# Eval("[Album Name]") %>' BackColor="Transparent" BorderStyle="None" CommandName="select" Font-Underline="True" Width="100%" ></asp:button><br />
                            <asp:HiddenField ID="hff" runat="server" Value='<%# Eval("albumid") %>' />
                            </td>
                        <td style="width: 25%; height: 42px; text-align:center; vertical-align: middle;">
                            <asp:Label ID="Creation_DateLabel" runat="server" Text='<%# Eval("[Creation Date]") %>' Width="100%"></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList><br />
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:familyPhotoConnectionString %>"
            SelectCommand="SELECT albumid,  LTRIM(UPPER([albumName])) AS  'Album Name', &#13;&#10;convert(varchar(20),day([albumDate])) + ' / ' + convert(varchar(20),month([albumDate])) + ' / ' + convert(varchar(20),year([albumDate])) as 'Creation Date'&#13;&#10; FROM [album] &#13;&#10;WHERE ([albumOwner] <> @albumOwner)">
            <SelectParameters>
                <asp:SessionParameter Name="albumOwner" SessionField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
                                    &nbsp;
                                </td>
											
							</tr>	
						</table>
</fieldset>
                    <br />
                    <br />  </fieldset>
                    &nbsp;<br /><br />
          <br /><br />
                    <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="contactus.aspx">
                        contact Us</a>&nbsp; |&nbsp; <a href="news.aspx">News</a> | <a href="member.aspx">Member</a>
		</td></tr></table>
		</center>
	</div>
 
<div class="copyright" align="center"> &nbsp;© all rights reserved.</div>
</div>
</form>
</body> 
</html>