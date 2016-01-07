<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AzureMLWebsiteTest.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This is an example application to demonstrate .Net deployment on Azure and AWS and Azure Machine Learning.</h3>
    <p>This application uses data from the US cencus in 1996 to train the model.</p>
</asp:Content>
