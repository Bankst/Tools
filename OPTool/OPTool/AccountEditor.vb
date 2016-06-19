Imports System.Data.SqlClient

Public Class AccountEditor
    Private Sub AccountNoBox_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles AccountNoBox.KeyPress
        If InStr("0123456789" & Chr(8), e.KeyChar) = False Then e.Handled = True
    End Sub
    '##### SQL Login #####
    Dim Config() As String = Split(My.Computer.FileSystem.ReadAllText("config.txt"), vbNewLine)
    Dim SQLHost As String = Config(0).Substring(Config(0).IndexOf("=") + 1)
    Dim SQLUserName As String = Config(1).Substring(Config(1).IndexOf("=") + 1)
    Dim SQLPassword As String = Config(2).Substring(Config(2).IndexOf("=") + 1)
    Private Sub Search_Click(sender As System.Object, e As System.EventArgs) Handles Search.Click
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=OdinAccounts; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL3 As String = "SELECT COUNT(*) FROM tAccounts WHERE sUsername = '" & AccIDBox.Text & "' OR nEMID = '" & AccountNoBox.Text & "';"
        Dim cdo3 As SqlCommand = New SqlCommand(strSQL3, Con)
        Con.Open()
        Dim countchar As Integer = cdo3.ExecuteScalar()
        If countchar = "1" Then
            Con.Close()
            Dim strSQL As String = "SELECT nEMID, sUsername, nAuthID, nAuthID, sEmail, sUserPass, sIP FROM dbo.tAccounts WHERE sUsername = '" & AccIDBox.Text & "' OR nEMID = '" & AccountNoBox.Text & "';"
            Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
            Con.Open()
            Dim AccountReader As SqlDataReader = cdo.ExecuteReader()
            While AccountReader.Read
                AccountNoBox.Text = AccountReader(0)
                AccIDBox.Text = AccountReader(1)
                AuthBox.Text = AccountReader(2)
                Blocked.Text = AccountReader(3)
                EmailBox.Text = AccountReader(4).ToString
                PasswordBox.Text = AccountReader(5)
                IPLabel.Text = AccountReader(6)
            End While
            Con.Close()
            '  Dim strSQL2 As String = "SELECT nUserMoney FROM tUserMoney WHERE nUserNo = '" & AccountNoBox.Text & "';"
            ' Dim cdo2 As SqlCommand = New SqlCommand(strSQL2, Con)
            'Con.Open()
            'Dim CashReader As SqlDataReader = cdo2.ExecuteReader()
            'While CashReader.Read
            ' CashBox.Text = CashReader(0)
            ' End While
            ' Con.Close()
            ' CashReader.Close()
            InfoLabel.Text = "Account " & AccIDBox.Text & " Succesfully found"
        Else
            InfoLabel.Text = "User not Found!"
        End If
    End Sub

    Private Sub AccountEditor_FormClosed(sender As Object, e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        Me.Hide()
        MainForm.Show()
    End Sub

    Private Sub Update_Click(sender As System.Object, e As System.EventArgs) Handles UpdateButton.Click
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=OdinAccounts; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL As String = "UPDATE tAccounts SET nAuthID = '" & AuthBox.Text & "', sUsername = '" & AccIDBox.Text & "', sEmail = '" & Blocked.Text & "', sUserPass = '" & PasswordBox.Text & "', sEmail = '" & EmailBox.Text & "' WHERE sUsername = '" & AccIDBox.Text & "' OR nEMID = '" & AccountNoBox.Text & "';"
        Dim CatCMD As SqlCommand = New SqlCommand(strSQL, Con)
        Con.Open()
        CatCMD.ExecuteNonQuery()
        Con.Close()
        'Dim strSQL2 As String = "UPDATE tCash SET cash = '" & CashBox.Text & "' WHERE userNo = '" & AccountNoBox.Text & "';"
        'Dim CatCMD2 As SqlCommand = New SqlCommand(strSQL2, Con)
        ' Con.Open()
        ' CatCMD2.ExecuteNonQuery()
        ' Con.Close()
        InfoLabel.Text = " Account " & AccIDBox.Text & " succesfully updated!"
    End Sub

    Private Sub Login_Click(sender As System.Object, e As System.EventArgs) Handles Login.Click
        Me.Hide()
        AccountLog.Show()
    End Sub

    Private Sub AccountEditor_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not MainForm.AccountNo.TextLength = 0 Then
            AccountNoBox.Text = MainForm.AccountNo.Text
            Search.PerformClick()
        End If
    End Sub
End Class