<%@ Page Title="" Language="C#" validateRequest = "false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lexicon.aspx.cs" Inherits="Lexicon.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style22
        {
            text-align: justify;
            font-size: medium;
        }
        .style27
    {
        text-align: left;
        font-family: Calibri;
    }
    .style32
    {
        text-align: center;
        width: 1010px;
        color: #000000;
        font-family: Calibri;
    }
        .style33
        {
            font-size: medium;
        }
        .style34
        {
            font-size: large;
        }
        .style21
        {
            font-size: medium;
            margin-top: 1px;
        margin-left: 0px;
    }
        .style38
    {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        &nbsp;</h1>
    <p class="style27">
        <strong style="text-align: center"><span class="style38">ΛΕΞΙΛΟΓΙΚΗ ΒΑΣΗ 
        ΔΕΔΟΜΕΝΩΝ ΤΗΣ ΚΥΠΡΙΑΚΗΣ ΔΙΑΛΕΚΤΟΥ</span><span class="style34"> </span><span class="style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></p>
<p class="style27">
        Σε ποια στήλη ψάχνω;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ποια λέξη ή τμήμα λέξης 
        ψάχνω;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Τι είδος λέξης 
        ψάχνω;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p class="style27">
        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="White" 
            CssClass="style21" Height="23px" Font-Names="Calibri" Width="134px">
            <asp:ListItem Value="Lemma">λήμμα</asp:ListItem>
            <asp:ListItem Value="Allomorpha">άλλες μορφές</asp:ListItem>
            <asp:ListItem Value="Allographa">άλλες γραφές</asp:ListItem>
            <asp:ListItem Value="Pho">φωνητική</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SearchTextBox1" runat="server" BackColor="#FEF5D6" 
            Font-Size="Medium" Height="23px" Width="311px" 
            ontextchanged="Button1_Click" Font-Italic="False" Font-Names="Calibri"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style21" 
            Font-Names="Calibri" height="23px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            BackColor="White">
            <asp:ListItem Value="%">όλες τις λέξεις</asp:ListItem>
            <asp:ListItem>αντωνυμία</asp:ListItem>
            <asp:ListItem>άρθρο</asp:ListItem>
            <asp:ListItem>αριθμητικό</asp:ListItem>
            <asp:ListItem>έκφραση</asp:ListItem>
            <asp:ListItem>επίθετο, αριθμητικό</asp:ListItem>
            <asp:ListItem>επίθετο, διγενές</asp:ListItem>
            <asp:ListItem>επίθετο, τριγενές</asp:ListItem>
            <asp:ListItem>επίρρημα</asp:ListItem>
            <asp:ListItem>επιφώνημα</asp:ListItem>
            <asp:ListItem>μετοχή</asp:ListItem>
            <asp:ListItem>μόριο</asp:ListItem>
            <asp:ListItem>ουσιαστικό, αρσενικό</asp:ListItem>
            <asp:ListItem>ουσιαστικό, διγενές</asp:ListItem>
            <asp:ListItem>ουσιαστικό, θηλυκό</asp:ListItem>
            <asp:ListItem>ουσιαστικό, ουδέτερο</asp:ListItem>
            <asp:ListItem>πρόθεση</asp:ListItem>
            <asp:ListItem>πρόθημα</asp:ListItem>
            <asp:ListItem>ρήμα</asp:ListItem>
            <asp:ListItem>ρήμα, απρόσωπο</asp:ListItem>
            <asp:ListItem>σύνδεσμος</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Αναζήτηση" 
            style="font-weight: 700" Font-Names="Calibri" height="23px" />
        </p>
<p class="style27">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <a href="Writing.aspx">Πώς πληκτρολούνται τα κυπριακά;</a></p>
<div class="style22">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="AccessDataSource1" 
            EmptyDataText="Δεν βρέθηκαν εγγραφές στο Λεξικό." Height="270px" 
            Width="1031px" PageSize="20" 
            onpageindexchanged="GridView1_PageIndexChanged" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            CellPadding="4" Font-Names="Calibri" ForeColor="#333333" GridLines="None" 
            style="margin-right: 0px; text-align: left;" onsorted="GridView1_Sorted" 
            onrowcommand="GridView1_RowCommand" DataKeyNames="Αναγνωριστικό">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Pho" HeaderText="Προφορά" SortExpression="Pho" />
   <asp:TemplateField SortExpression="Sound">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Sound") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="Label1" runat="server" ImageUrl="~/Images/sound.jpg" Text='<%# Bind("sound") %>' NavigateUrl= '<%# Eval("Sound") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Lemma" HeaderText="Λήμμα" 
                    SortExpression="Lemma" >
                <ControlStyle Font-Bold="True" />
                <ItemStyle Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="BLAllog" />
                <asp:BoundField DataField="Allographa" HeaderText="Άλλες γραφές" 
                    SortExpression="Allographa" />
                <asp:BoundField DataField="BLAllom" />
                <asp:BoundField DataField="Allomorpha" HeaderText="Άλλες μορφές" 
                    SortExpression="Allomorpha" />
                <asp:BoundField DataField="Gra" HeaderText="Γραμμ. κατηγορία" 
                    SortExpression="Gra" />
                <asp:BoundField DataField="Klisi" HeaderText="Κλίση" SortExpression="Klisi" />
                <asp:BoundField DataField="Comments" HeaderText="Σχόλια" 
                    SortExpression="Comments" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/Resources/Lexicon.mdb" 
            
        
        
        
        
        SelectCommand="SELECT * FROM [Lexicon]">
        </asp:AccessDataSource>
    &nbsp;&nbsp;&nbsp;
    <p>
    &nbsp; &nbsp;</p>
    <p>
    </p>
    </asp:Content>