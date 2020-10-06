﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ernæringsassitent.aspx.cs" Inherits="Website_Praktikmål1.ernæringsassitent" %>

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
                        <ul>


                            <%--  <p>
                            </p>
                            <li>
                                Du og din praktikvejleder bør afholde en samtale om den kommende skoleperiode,
                                hvor i sammen ser på kvilke fag, du bliver undervist i. Få en snak om, hvordan
                                i kan arbejde videre med det, du har lært, når du vender tilbage fra skoleperioden.
                            </li>
                            <p>
                            </p>
                            <li>
                                Har din praktikvejleder udfyldt "Praktikerklæring til skole og elev" inden skoleopholdet?.
                                Har i drøftet indholdet i erklæringen?. Vær opmærksom på, at den kan udfyldes i Elevplan.
                            </li>
                            <p>
                            </p>
                            <li>
                                Lige inden du afslutter 1. skoleperiode, har du en samtale med din kontaktlærer, hvor i
                                evaluerer dit skoleforløb og drøfter, hvordan du kan arbejde videre med de faglige og
                                personlige kompetencer i praktikkrn.
                            </li>
                            <p>
                            </p>
                            <li>
                                Husk at give skolen besked, hvis du har brug for speciel støtte, det kan være it-rygsæk,
                                tolkebistand o.lign. senest 1 mdr. før du skal starte.
                            </li>
                            <p>
                            </p>
                            <li>
                                I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                for en 3-part-samtale eksempelvis om det kommende skoleophold.
                            </li>--%>
                        </ul>
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
                <%-- <div class="drops" id="BlueColor">
                    <div class="drop" draggable="true">


                         
                        
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"/></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox"><input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>

                </div>--%>
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
                        <%-- <ul>
                            <li>
                                I begyndelsen af 2. praktikperiode bør du og din praktikvejleder drøfte din selvevaluering fra 1. skoleperiode og
                                sammenholde den med den samtale, i havde inden du startede på 1. skoleperiode.
                            </li>
                            <p>
                            </p>
                            <li>
                                Du og din praktikvejleder bør afholde en samtale om den kommende skoleperiode,
                                hvor i sammen ser på kvilke fag, du bliver undervist i. Få en snak om, hvordan
                                i kan arbejde videre med det, du har lært, når du vender tilbage fra skoleperioden.
                            </li>
                            <p>
                            </p>
                            <li>
                                Har din praktikvejleder udfyldt "Praktikerklæring til skole og elev" inden skoleopholdet?.
                                Har i drøftet indholdet i erklæringen?. Vær opmærksom på, at den kan udfyldes i Elevplan.
                            </li>
                            <p>
                            </p>
                            <li>
                                Din praktikvejleder inviteres til praktikværtarrangement og 3-part-samtale i begyndelsen af 2.
                                skoleperiode. Det kan derfor være en god ide, at i tager en snak om valg af valgfrie uddannelsesspecifikke
                                fag på 3. skoleperiode samt punkter, som i vil snakke med kontaktlæreren om i 3-part-semtalen.
                            </li>
                        </ul>--%>
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
                <!-- har ændret ordet drops til list-->
                <div class="drops" id="GreyColor">
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                </div>

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
                        <ul>
                            <li>Det er vigtigt, at du løbende reflekterer over, hvad du lærte på grundforløbet
                                og hvordan du har brugt det i praktikken. Du kan også løbende drøfte med din
                                praktikvejleder, hvordan du akn bruge der du lærer i praktikken, på hovedforløbet.
                            </li>
                            <p>
                            </p>
                            <li>Du og din praktikvejleder bør afholde en samtale om den kommende skoleperiode,
                                hvor i sammen ser på kvilke fag, du bliver undervist i. Få en snak om, hvordan
                                i kan arbejde videre med det, du har lært, når du vender tilbage fra skoleperioden.
                            </li>
                            <p>
                            </p>
                            <li>Har din praktikvejleder udfyldt "Praktikerklæring til skole og elev" inden skoleopholdet?.
                                Har i drøftet indholdet i erklæringen?. Vær opmærksom på, at den kan udfyldes i Elevplan.
                            </li>
                            <p>
                            </p>
                            <li>Lige inden du afslutter 1. skoleperiode, har du en samtale med din kontaktlærer, hvor i
                                evaluerer dit skoleforløb og drøfter, hvordan du kan arbejde videre med de faglige og
                                personlige kompetencer i praktikkrn.
                            </li>
                            <p>
                            </p>
                            <li>Husk at give skolen besked, hvis du har brug for speciel støtte, det kan være it-rygsæk,
                                tolkebistand o.lign. senest 1 mdr. før du skal starte.
                            </li>
                            <p>
                            </p>
                            <li>I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                for en 3-part-samtale eksempelvis om det kommende skoleophold.
                            </li>
                        </ul>
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
                <!-- Tekster der skal kunne droppes -->
                <!-- har ændret ordet drops til list-->
                <div class="drops" id="YellowColor">
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="drop" draggable="true">
                        <table>
                            <tr class="dropTitle">
                                <h3>Produktion og Tilberedningsteknik - 18159</h3>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        1. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                            <tr>
                                <td>
                                    <p>
                                        2. I er velkommne til at tage kontakt til skolen, hvis  du og din praktikvejleder har brug
                                        for en 3-part-samtale eksempelvis om det kommende skoleophold.
                                    </p>
                                </td>
                                <td class="checkbox">
                                    <input type="checkbox"></td>
                            </tr>
                        </table>
                    </div>

                </div>

            </div>
            <div class="footer">
            </div>
        </div>
        <script src="TestJS.js"></script>
</body>
</html>
