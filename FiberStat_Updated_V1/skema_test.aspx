<%@ Page Title="" Language="C#" MasterPageFile="~/Stats.Master" AutoEventWireup="true" CodeBehind="skema_test.aspx.cs" Inherits="FiberStat_Updated_V1.skema_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
         <script type="text/javascript">

            function CC(text) {
                window.prompt("Copy to clipboard: Ctrl+C, Enter", text);
            }
    </script>

    <div class="container">
        <div class="row">
            <asp:RadioButtonList ID="source" RepeatColumns="2" runat="server" Width="50%">

                        <asp:ListItem Text="Telefon" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Mail" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Butik" Value="2"></asp:ListItem>
                        <asp:ListItem Text="RT" Value="3"></asp:ListItem>

                    </asp:RadioButtonList>
   
                    <hr />
 
                    <asp:RadioButtonList ID="FejlValg" RepeatColumns="2" runat="server" Width="85%">

                        <asp:ListItem Text="Wifi" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Router" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Økonomi" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Tilmelding" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Afmelding" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Stikplacering" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Kabling" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Nedbrud" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Sanering" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Mistet service eller Fejl i service" Value="9"></asp:ListItem>
                        <asp:ListItem Text="Fast IP" Value="10"></asp:ListItem>
                        <asp:ListItem Text="TV & Antenne" Value="11"></asp:ListItem>

                    </asp:RadioButtonList>
                    <hr />
                    <asp:RadioButtonList ID="SolvedValg" RepeatColumns="2" runat="server" Width="71%">
                        <asp:ListItem Text="Løst" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Ikke Løst" Value="0"></asp:ListItem>
                    </asp:RadioButtonList>

                    
                </div>
   
                    
                <div class="row">
                <div class="input-field col s12">
                    <textarea id="text" runat="server" class="materialize-textarea"></textarea>
                    <label for="textarea1">Kommentar</label>
                </div>
                </div>

                    <div class="row">
                    <div class="input-field col s12">
                        <textarea ID="name" class="materialize-textarea" runat="server"></textarea>
                        <label for="textarea1">Initialer</label>
                    </div>
                    </div>
        </div>

  

        <div class="center-align">
            <asp:Button runat="server" ID="gennemse" Text="Gennemse valg" CssClass="waves-light waves-effect btn-large" OnClick="gennemse_Click"/>
        </div>
    <br />
    <br />
    <div style="width: 50%; margin: auto;" id="something">
        <pre>
<label runat="server" style="font-size: 15px" id="label"></label>
        </pre>
    </div>
    
            <div class="center-align">
            <asp:Button runat="server" ID="CopyButton" Text="Kopier og registrer" CssClass="waves-light waves-effect btn-large" OnClientClick="CC(document.getElementById('something').textContent)" Visible="false" OnClick="CopyButton_Click" />
        </div>
</asp:Content>
