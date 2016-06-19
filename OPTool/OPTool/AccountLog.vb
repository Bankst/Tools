Imports System.Data.SqlClient

Public Class AccountLog

    Dim sTable As DataTable
    Dim sAdapter As SqlDataAdapter
    Dim sDs As New DataSet
    '##### SQL Login #####
    Dim Config() As String = Split(My.Computer.FileSystem.ReadAllText("config.txt"), vbNewLine)
    Dim SQLHost As String = Config(0).Substring(Config(0).IndexOf("=") + 1)
    Dim SQLUserName As String = Config(1).Substring(Config(1).IndexOf("=") + 1)
    Dim SQLPassword As String = Config(2).Substring(Config(2).IndexOf("=") + 1)

    Private Sub AccountLog_FormClosed(sender As Object, e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        AccountEditor.Show()
        Me.Hide()
    End Sub

    Private Sub AccountLog_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If DataGridView1.RowCount > 0 Then
            sDs.Clear()
        End If
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=AccountLog; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL As String = "SELECT sUserID, nUserNo, nPlayMin, sIP FROM dbo.tAccountLog WHERE nUserNo = '" & AccountEditor.AccountNoBox.Text & "' ORDER BY DdATE DESC;"
        Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
        Con.Open()
        sAdapter = New SqlDataAdapter(cdo)
        Dim sBuilder As New SqlCommandBuilder(sAdapter)
        sAdapter.Fill(sDs, "tAccountLog")
        sTable = sDs.Tables("tAccountLog")
        Con.Close()
        DataGridView1.DataSource = sDs.Tables("tAccountLog")
        DataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect
        If AccountEditor.AccountNoBox.TextLength > 0 Then
            Status.Text = "Account " & AccountEditor.AccountNoBox.Text & " selected"
        Else
            Status.Text = "No Account selected! Please select a Account No at the Account Editor!"
        End If
    End Sub
End Class