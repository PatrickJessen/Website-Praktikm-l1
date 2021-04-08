<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Website_Praktikmål1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="App.js"></script>
    <link href="Forside.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <title>Forside</title>
</head>
<body>
    <div>
        <div class="navbarBackground">
            <a href="main.aspx">
                <img class="ZBCLOGO" src="/resource/zbc logo.jpg" alt="Logo" /></a>
            <form class="searchBar">
                <input id="myInput" class="myInput" type="text" placeholder="Søg efter uddannelse" onkeyup="myFunction()" />
            </form>
        </div>  
        <nav>
            <div class="scrollbar">
                <ul class="bar" id="myUL">

                    <li onmouseover="Hover1()" onmouseout="Hover1hide()"><a href="ernæringsassitent.aspx" target="popup">Ernæringsassistens</a> </li>
                    <asp:Label ID="lbl_test" runat="server" />
                    <li onmouseover="Hover2()" onmouseout="Hover2hide()"><a href="personvognsmekaniker.aspx" target="_blank">Personvognsmekaniker </a></li>
                    <li onmouseover="Hover3()" onmouseout="Hover3hide()"><a href="https://www.zbc.dk/" target="_blank">Datatekniker med speciale i programmering</a></li>
                    <li onmouseover="Hover4()" onmouseout="Hover4hide()"><a href="https://www.zbc.dk/" target="_blank">Datatekniker med speciale i infrastruktur</a></li>
                    <li onmouseover="Hover5()" onmouseout="Hover5hide()"><a href="https://www.zbc.dk/" target="_blank">Social- og sundhedsassitent</a></li>
                    <li onmouseover="Hover6()" onmouseout="Hover6hide()"><a href="https://www.zbc.dk/" target="_blank">Social- og sundhedshjælper</a></li>
                    <li onmouseover="Hover7()" onmouseout="Hover7hide()"><a href="https://www.zbc.dk/" target="_blank">Bager og konditor </a></li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>
                    <li>test</li>




                </ul>
                <div class="Billeder">
                    <img class="HoverImageStatic" src="/resource/zbc logo.jpg" alt="Static billede på forside" />
                    <img class="HoverImage" src="/Resource/Gastronom2.jpeg" alt="Billed af Ernæringassistens" />
                    <img class="HoverImage2" src="/Resource/mekanikker.jpeg" alt="Billed af mekanikker" />
                    <img class="HoverImage3" src="/Resource/Data program.jpg" alt="=Billed af programmering" />
                    <img class="HoverImage4" src="/Resource/data inf.jpg" alt="=Billed af infrastruktur" />
                    <img class="HoverImage5" src="/Resource/sosu assistent.jpg" alt="Billed af SOSU Assitent" />
                    <img class="HoverImage6" src="/Resource/sosu hjælper.jpg" alt="Billed af SOSU Hjælper" />
                    <img class="HoverImage7" src="/Resource/bager.jpeg" alt="Billed af bager" />

                </div>


            </div>




        </nav>


    </div>
    <div class="footer">
        <p class="footerText">Designed by ZBC Roskilde</p>
    </div>


</body>
</html>
