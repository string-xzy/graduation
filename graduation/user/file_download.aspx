﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="file_download.aspx.cs" Inherits="user_file_download" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register TagPrefix="WebSession" TagName="CheckSession" Src="UserControls/session.ascx"  %>
<WebSession:CheckSession id="CheckSession" runat="server"></WebSession:CheckSession>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="../css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="7"></td>
				</tr>
			</table>
			<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" class="title_top" align="center">文件下载列表</td>
				</tr>
			</table>
						<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
					<asp:GridView ID="GridView1" runat="server" Width="100%"  DataKeyNames ="FileListID" CellPadding ="4" AutoGenerateColumns="False" BackColor="#77aeee" BorderColor="#77aeee" BorderStyle="Solid">
                            <Columns>
                              <asp:BoundField DataField="FileListID" HeaderText="ID编号" ></asp:BoundField>
                               <asp:TemplateField HeaderText="文件名称">
                                <ItemTemplate>
										<a href='file_download_prs.aspx?FilePath=../upfile/affix/<%#Eval("UpFileName")%>&FileListID=<%#Eval("FileListID")%>'><%#Eval("UpFileName")%></a>
								</ItemTemplate>
								</asp:TemplateField>
                                <asp:BoundField DataField="FileContent" HeaderText="文件说明" ></asp:BoundField>
                               <asp:BoundField DataField="FileSize" HeaderText="文件大小(k)" ></asp:BoundField>
                                <asp:BoundField DataField="DownloadTimes" HeaderText="下载次数" ></asp:BoundField>
                                <asp:BoundField DataField="AddTime" DataFormatString="{0:yyyy-M-dd}" HeaderText="文件发布时间" ></asp:BoundField>
                            </Columns>
                            <RowStyle HorizontalAlign="Center" BackColor="White" />
                            <HeaderStyle BackColor="#A5C8F0" Font-Size="13px" />                         
                        </asp:GridView>
					</td>
				</tr>
			</table>
			
			<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td style="height:26px;"><webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageSize="10" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager></td>
				</tr>
			</table>
			<br /><br />
    </form>
</body>
</html>
