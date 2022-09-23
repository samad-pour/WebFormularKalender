<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>WebFormularKalender</title>

    <%@ Page Language="C#" %>

    <script runat="server">
    private void Auswahl(object sender, EventArgs e)
    {
        ausgabe.Text = kalender.SelectedDate.ToShortDateString();
    }
    </script>
</head>
<body>
    Kalender:
    <form id="Form1" runat="server">
        <asp:Calendar ID="kalender" runat="server"
            OnSelectionChanged="Auswahl">
            <TodayDayStyle BackColor="Red"
                ForeColor="Yellow"></TodayDayStyle>
            <WeekendDayStyle BackColor="Yellow"
                ForeColor="Red"></WeekendDayStyle>
        </asp:Calendar>
    </form>
    <p>
        <asp:Label ID="ausgabe" runat="server" /></p>
</body>
</html>
