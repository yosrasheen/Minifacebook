<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pictures.aspx.cs" Inherits="pictures" EnableEventValidation="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xml:lang="en" lang="en" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<title> Family Gathering ----- Pictures</title>
<style type="text/css" media="all">
@import url(styles/css_4.css);
</style> 
 
</head> 
<body>
<form id="Form1" runat="server">
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
			<img border="0" src="images/familylogo.gif" width="500" height="125" alt=""/>
            <table id="table1" border="0" width="100%">
                <tr>
                    <td colspan="2">
                        <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="ContactUs.aspx">contact
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
		<table class='ipbtable' cellspacing="0" align='center' width="100%">
			<tr>
				<td  valign="top" class='row2' align='center' style="height: 133px">
					<fieldset >
						<legend><b>Pictures of the album <span runat="server" id="a"></span></b></legend>
						<table class='ipbtable' cellspacing="0" width="100%">
                            <tr>
                                <td style="width: 34%; height: 26px;">
                                    </td>
                                <td style="width: 500px; height: 26px;">
                                </td>
                            </tr>
                            <tr runat="server" id="member">
                                <td colspan="2" style="height: 296px">
                                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" OnItemDataBound="dlImages1_ItemDataBound" Width="100%">
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <table width="100%">
                                                    <tr>
                                                        <td >
                                            <asp:Image ID="imgThumbnail" runat="server" />
                                                            <br />
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label><br />
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label></td>
                            </tr>
                            
                
               
                            <tr runat="server" id="owner">
                        
                                <td colspan="2">
                                    <asp:DataList ID="DataList2" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" OnItemDataBound="dlImages_ItemDataBound" Width="100%" OnItemCommand="DataList2_ItemCommand"  >
                                        <ItemTemplate>
                                            <div style="text-align: center">
                                                <table width="100%">
                                                    <tr>
                                                        <td style="width: 75%; vertical-align: top; text-align: left;">
                                            <asp:Image ID="imgThumbnail" runat="server" />
                                                            <br />
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label><br />
                                                            <br />
                                                        </td>
                                                        <td style="width: 25%; vertical-align: top; text-align: right;">
                                                            <asp:Button ID="btnEdit" runat="server"  Text="Edit Caption"  Width="140px" CommandName="change"/><br />
                                                            <asp:Button ID="btnDelete" runat="server" Text="Delete Picture" Width="140px"  CommandName="del" /><br />
                                                            <asp:HiddenField ID="hf" runat="server" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </ItemTemplate>
                                        
                                        
                                    </asp:DataList>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                    <asp:Button ID="btnAdd" runat="server" BorderStyle="None" CssClass="button" OnClick="btnAdd_Click"
                        Text="Add a Photo" /></td>
                                
                            </tr>
							</table>
					</fieldset>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="button" OnClick="btnback_Click"
                        Text="Back to Albums" /><br />
                    <br />
                </td>
			
			</tr>
		</table>
		</center>
	</div>
    <a href="default.aspx">Home</a> |<a href="aboutUs.htm">About Us</a>&nbsp; | <a href="ContactUs.aspx">contact
                        Us</a>&nbsp; |&nbsp; <a href="news.aspx">News</a> | <a href="member.aspx">Member</a>&nbsp;<br />
    <br />
    &nbsp;© all rights reserved.</div>
</form>
</body> 
</html>