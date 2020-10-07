<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ernæringsassitent.aspx.cs" Inherits="Website_Praktikmål1.ernæringsassitent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="TestStyle.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="utf-8" />
    <title>Drag n Drop</title>
</head>
<body>
    <div class="main">
        <!--Header-->
        <div class="header">
            <div class="print">
                <i class="fa fa-print" onclick="window.print();"></i>
            </div>
            <div class="mainTitle">
                <h1>OVERBLIK OVER PRAKTIKMÅL PÅ ERNÆERGSASSISTENTUDDANNELSEN</h1>
            </div>
            <div>
                <a href="main.aspx">
                    <img class="logo" src="Resources/zbcogo.jpg" alt="zbclogo" /></a>
            </div>
        </div>
        <!--Body-->
        <div class="body">
            <!-- blue container -->
            <div class="containerBody">
                <!-- Forløb oversigt -->
                <div class="forløbne" id="BlueColor">
                    <div class="forløb">
                        <h3>Grundforløb 2</h3>
                        <h3>- varihed: 20 uger</h3>
                    </div>
                    <div class="forløb">
                        <h3>1. Praktik i virksomhed</h3>
                        <h3></h3>
                    </div>
                    <div class="forløb">
                        <h3>1. Skoleperiode</h3>
                        <h3>- Varighed: 10 uger</h3>
                    </div>
                </div>
                <!-- Tips og tanker -->
                <div class="tips">
                    <div id="TipsTitle">
                        <h1>Tips og tanker inden 1. skoleperiode </h1>
                    </div>
                    <div>
                        <asp:PlaceHolder ID="TipDesc1" runat="server" />                        
                    </div>
                </div>
                <!-- Målpinde for 1. praktikperiode -->
                <div class="målpind">
                    <div class="tekst-left">
                        <h3>MÅLPINDE FOR 1. PRAKTIKPERIODE</h3>
                    </div>
                    <div class="tekst-right">
                        <h3>SÆT KRYDS</h3>
                    </div>

                </div>
                <asp:PlaceHolder ID="GoalDescText1" runat="server" />
                <!-- Drops -->               
            </div>

            <!-- GreyColor container -->
            <div class="containerBody">
                <!-- Forløb oversigt -->
                <div class="forløbne" id="GreyColor">
                    <div class="forløb">
                        <h3></h3>
                    </div>
                    <div class="forløb">
                        <h3>2. Praktik i virksomhed</h3>
                        <h3></h3>
                    </div>
                    <div class="forløb">
                        <h3>2. Skoleperiode</h3>
                        <h3>- Varighed: 10 uger</h3>
                    </div>
                </div>
                <!-- Tips og tanker -->
                <div class="tips">
                    <div id="TipsTitle">
                        <h1>Tips og tanker inden 2. skoleperiode </h1>
                    </div>
                    <div>
                        <asp:PlaceHolder ID="TipDesc2" runat="server" />                      
                    </div>
                </div>
                <!-- Målpinde for 2. praktikperiode -->
                <div class="målpind">
                    <div class="tekst-left">
                        <h3>MÅLPINDE FOR 1. PRAKTIKPERIODE</h3>
                    </div>
                    <div class="tekst-right">
                        <h3>SÆT KRYDS</h3>
                    </div>
                </div>
                <asp:PlaceHolder ID="GoalDescText2" runat="server" />
            </div>
            <!-- Yellow container -->
            <!-- har ændret ordet containerbody til lists-->
            <div class="containerBody">
                <!-- Forløb oversigt -->
                <div class="forløbne" id="YellowColor">
                    <div class="forløb">
                        <h3></h3>
                    </div>
                    <div class="forløb">
                        <h3>3. Praktik i virksomhed</h3>
                        <h3></h3>
                    </div>
                    <div class="forløb">
                        <h3>3. Skoleperiode</h3>
                        <h3>- Varighed: 10 uger</h3>
                    </div>
                </div>
                <!-- Tips og tanker -->
                <div class="tips">
                    <div id="TipsTitle">
                        <h1>Tips og tanker inden 3. skoleperiode </h1>
                    </div>
                    <div>
                        <asp:PlaceHolder ID="TipDesc3" runat="server" />                       
                    </div>
                </div>
                <!-- Målpinde for 3. praktikperiode -->
                <div class="målpind">
                    <div class="tekst-left">
                        <h3>MÅLPINDE FOR 1. PRAKTIKPERIODE</h3>
                    </div>
                    <div class="tekst-right">
                        <h3>SÆT KRYDS</h3>
                    </div>
                </div>
                <asp:PlaceHolder ID="GoalDescText3" runat="server" />
            </div>
            <div class="footer">
            </div>
        </div>
        <script src="TestJS.js"></script>
</body>
</html>
