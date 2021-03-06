<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
       
    <table>
        <tr>
            <td>
                <label id="lblName">CategoryName:</label>
            </td>
            <td>
                <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" Value=<%# Bind("CategoryName")%>>
                    <ValidationSettings ValidationGroup="testGroup">
                        <RequiredField IsRequired="true"/>                    
                    </ValidationSettings>
                </dxe:ASPxTextBox>
            </td>
            <td>
                <label id="lblDescription">Description:</label>
            </td>
            <td>
                <dxe:ASPxMemo ID="ASPxMemo1" runat="server" Height="71px" Width="170px" Value=<%# Bind("Description")%>>
                    <ValidationSettings ValidationGroup="testGroup">
                        <RequiredField IsRequired="true"/>
                    </ValidationSettings>
                </dxe:ASPxMemo>
            </td>
        </tr>
        <tr>
            <td colspan=2 style="text-align:center;">
                <dxe:ASPxButton ID="btnUpdate" runat="server" Text="Update" AutoPostBack="false">
                    <ClientSideEvents Click="function(s,e) {
                        if(ASPxClientEdit.ValidateGroup('testGroup'))
                            DoUpdate();
                    }"/>
                </dxe:ASPxButton>
            </td>
            <td colspan=2 style="text-align:center;">
                <dxe:ASPxButton ID="btnCancel" runat="server" Text="Cancel" AutoPostBack="false">
                    <ClientSideEvents Click="function(s,e) {
                        DoCancel();
                    }"/>                
                </dxe:ASPxButton>
            </td>
        </tr>
    </table>
