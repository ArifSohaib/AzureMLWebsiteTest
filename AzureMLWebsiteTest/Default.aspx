<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AzureMLWebsiteTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6" id="inputData">

            <label id="lblAge">Age:</label>
            <asp:TextBox runat="server" ID="age"></asp:TextBox>
            <br />

            <label>Workclass</label>
            <asp:DropDownList class="lbox" runat="server" ID="workclass">
                <asp:ListItem Text="Private" Value="Private" />
                <asp:ListItem Text="Self-emp-not-inc" Value="Self-emp-not-inc" />
                <asp:ListItem Text="Federal-gov" Value="Federal-gov" />
                <asp:ListItem Text="Local-gov" Value="Local-gov" />
                <asp:ListItem Text="State-gov" Value="State-gov" />
                <asp:ListItem Text="Without-pay" Value="Without-pay" />
                <asp:ListItem Text="Never-worked" Value="Never-worked" />
            </asp:DropDownList>
            <br />

            <label>fnlwgt:</label>
            <asp:TextBox runat="server" ID="fnlwgt"></asp:TextBox>
            <br />

            <label>Education</label>
            <asp:DropDownList runat="server" ID="education">
                <asp:ListItem Text="Doctorate" Value="Doctorate" />
                <asp:ListItem Text="Masters" Value="Masters" />
                <asp:ListItem Text="Bachelors" Value="Bachelors" />
                <asp:ListItem Text="Some Collage" Value="Some-collage" />
                <asp:ListItem Text="Professional School" Value="Prof-school" />
                <asp:ListItem Text="High School Graduate" Value="HS-grad" />
                <asp:ListItem Text="Professional School" Value="Prof-school" />
                <asp:ListItem Text="Assoc-acdm" Value="Assoc-acdm" />
                <asp:ListItem Text="Assoc-voc" Value="Assoc-voc" />
                <asp:ListItem Text="12th" Value="12th" />
                <asp:ListItem Text="11th" Value="11th" />
                <asp:ListItem Text="10th" Value="10th" />
                <asp:ListItem Text="9th" Value="9th" />
                <asp:ListItem Text="7th-8th" Value="7th-8th" />
                <asp:ListItem Text="6th-7th" Value="6th-7th" />
                <asp:ListItem Text="5th-6th" Value="5th-6th" />
                <asp:ListItem Text="1st-4th" Value="1st-4th" />
                <asp:ListItem Text="Preschool" Value="Preschool" />
            </asp:DropDownList>
            <br />

            <label>Education-num</label>
            <asp:TextBox runat="server" ID="educationNum"></asp:TextBox>
            <br />

            <label>Maratial-status</label>
            <asp:DropDownList runat="server" ID="maratialStatus">
                <asp:ListItem Text="Married-civ-spouse" Value="Married-civ-spouse" />
                <asp:ListItem Text="Divorced" Value="Divorced" />
                <asp:ListItem Text="Never-married" Value="Never-married" />
                <asp:ListItem Text="Seperated" Value="Seperated" />
                <asp:ListItem Text="Married-spouse-absent" Value="Married-spouse-absent" />
                <asp:ListItem Text="Married-AF-spouse" Value="Married-AF-spouse" />
            </asp:DropDownList>
            <br />

            <label>Occupation</label>
            <asp:DropDownList runat="server" ID="occupation">
                <asp:ListItem Text="Tech-support" Value="Tech-support" />
                <asp:ListItem Text="Craft-repair" Value="Craft-repair" />
                <asp:ListItem Text="Other-service" Value="Other-service" />
                <asp:ListItem Text="Sales" Value="Sales" />
                <asp:ListItem Text="Exec-managerial" Value="Exec-managerial" />
                <asp:ListItem Text="Prof-specialty" Value="Prof-specialty" />
                <asp:ListItem Text="Handlers-cleaners" Value="Handlers-cleaners" />
                <asp:ListItem Text="Machine-op-inspt" Value="Machine-op-inspt" />
                <asp:ListItem Text="Adm-clerical" Value="Adm-clerical" />
                <asp:ListItem Text="Farming-fishing" Value="Farming-fishing" />
                <asp:ListItem Text="Transport-moving" Value="Transport-moving" />
                <asp:ListItem Text="Priv-house-serv" Value="Priv-house-serv" />
                <asp:ListItem Text="Protective-serv" Value="Protective-serv" />
                <asp:ListItem Text="Armed-Forces" Value="Armed-Forces" />
            </asp:DropDownList>
            <br />

            <label>Relationship</label>
            <asp:DropDownList runat="server" ID="relationship">
                <asp:ListItem Text="Husband" Value="Husband" />
                <asp:ListItem Text="Wife" Value="Wife" />
                <asp:ListItem Text="Own-child" Value="Own-child" />                
                <asp:ListItem Text="Not-in-family" Value="Not-in-family" />
                <asp:ListItem Text="Other-relative" Value="Other-relative" />
                <asp:ListItem Text="Unmarried" Value="Unmarried" />
            </asp:DropDownList>
            <br />

            <label>Race</label>
            <asp:DropDownList runat="server" ID="race">
                <asp:ListItem Text="White" Value="White" />
                <asp:ListItem Text="Asian-Pac-Islander" Value="Asian-Pac-Islander" />
                <asp:ListItem Text="Amer-Indian-Eskimo" Value="Amer-Indian-Eskimo" />
                <asp:ListItem Text="Black" Value="Black" />
                <asp:ListItem Text="Other" Value="Other" />
            </asp:DropDownList>
            <br />

            <label>Sex</label>
            <asp:DropDownList runat="server" ID="sex">
                <asp:ListItem Text="Male" Value="Male" />
                <asp:ListItem Text="Female" Value="Female" />
            </asp:DropDownList>
            <br />

            <label>Capital-gain</label>
            <asp:TextBox runat="server" ID="capitalGain"></asp:TextBox>
            <br />

            <label>Capital-loss</label>
            <asp:TextBox runat="server" ID="capitalLoss"></asp:TextBox>
            <br />

            <label>Hours-per-week</label>
            <asp:TextBox runat="server" ID="hoursPerWeek"></asp:TextBox>
            <br />

            <label>Country of origin</label>
            <asp:DropDownList runat="server" ID="country">
                <asp:ListItem Text="United-States" Value="United-States" />
                <asp:ListItem Text="Cambodia" Value="Cambodia" />
                <asp:ListItem Text="England" Value="England" />
                <asp:ListItem Text="Puerto-Rico" Value="Puerto-Rico" />
                <asp:ListItem Text="Canada" Value="Canada" />
                <asp:ListItem Text="Germany" Value="Germany" />
                <asp:ListItem Text="Outlying-US( Guam-USVI-etc)" Value="Outlying-US( Guam-USVI-etc)" />
                <asp:ListItem Text="India" Value="India" />
                <asp:ListItem Text="Japan" Value="Japan" />
                <asp:ListItem Text="Greece" Value="Greece" />
                <asp:ListItem Text="South" Value="South" />
                <asp:ListItem Text="China" Value="China" />
                <asp:ListItem Text="Cuba" Value="Cuba" />
                <asp:ListItem Text="Iran" Value="Iran" />
                <asp:ListItem Text="Honduras" Value="Honduras" />
                <asp:ListItem Text="Philippines" Value="Philippines" />
                <asp:ListItem Text="Italy" Value="Italy" />
                <asp:ListItem Text="Poland" Value="Poland" />
                <asp:ListItem Text="Jamaica" Value="Jamaica" />
                <asp:ListItem Text="Vietnam" Value="Vietnam" />
                <asp:ListItem Text="Mexico" Value="Mexico" />
                <asp:ListItem Text="Portugal" Value="Portugal" />
                <asp:ListItem Text="Ireland" Value="Ireland" />
                <asp:ListItem Text="France" Value="France" />
                <asp:ListItem Text="Dominican-Republic" Value="Dominican-Republic" />
                <asp:ListItem Text="Laos" Value="Laos" />
                <asp:ListItem Text="Ecuador" Value="Ecuador" />
                <asp:ListItem Text="Taiwan" Value="Taiwan" />
                <asp:ListItem Text="Haiti" Value="Haiti" />
                <asp:ListItem Text="Columbia" Value="Columbia" />
                <asp:ListItem Text="Hungary" Value="Hungary" />
                <asp:ListItem Text="Guatemala" Value="Guatemala" />
                <asp:ListItem Text="Nicaragua" Value="Nicaragua" />
                <asp:ListItem Text="Scotland" Value="Scotland" />
                <asp:ListItem Text="Thailand " Value="Thailand" />
                <asp:ListItem Text="Yugoslavia" Value="Yugoslavia" />
                <asp:ListItem Text="El-Salvador" Value="El-Salvador" />
                <asp:ListItem Text="Trinadad&Tobago" Value="Trinadad&Tobago" />
                <asp:ListItem Text="Peru" Value="Peru" />
                <asp:ListItem Text="Hong" Value="Hong" />
                <asp:ListItem Text="Holland-Netherlands" Value="Holland-Netherlands" />
            </asp:DropDownList>
            <br />

            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-6">
                    
                    <asp:Button runat="server" OnClick="getPrediction" Text="Predict Income" style="display: table; margin: auto"/>
                </div>
            </div>
        </div>
        <div runat="server" class="col-md-6" id="results">
        </div>
    </div>

    <a href="https://archive.ics.uci.edu/ml/datasets/Census+Income" style="display: table; margin: auto">Learn more about the UCI income dataset</a>

</asp:Content>
