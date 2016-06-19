Imports System.Data.SqlClient

Public Class FriendList
    Dim sTable As DataTable
    Dim sAdapter As SqlDataAdapter
    Dim sDs As New DataSet
    '##### SQL Login #####
    Dim Config() As String = Split(My.Computer.FileSystem.ReadAllText("config.txt"), vbNewLine)
    Dim SQLHost As String = Config(0).Substring(Config(0).IndexOf("=") + 1)
    Dim SQLUserName As String = Config(1).Substring(Config(1).IndexOf("=") + 1)
    Dim SQLPassword As String = Config(2).Substring(Config(2).IndexOf("=") + 1)
    Dim Server As String = "World00_Character"
    Private Sub Search_Click(sender As System.Object, e As System.EventArgs) Handles Search.Click
        If MainForm.ServerSelect.Text = "Server 01" Then
            Server = "World00_Character"
        ElseIf MainForm.ServerSelect.Text = "Server 02" Then
            Server = "World01_Character"
        End If
        If DataGridView1.RowCount > 0 Then
            sDs.Clear()
        End If
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & Server & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL As String = "SELECT * FROM dbo.tFriend WHERE nCharNo = '" & CharacterName.Text & "';"
        Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
        Con.Open()
        sAdapter = New SqlDataAdapter(cdo)
        Dim sBuilder As New SqlCommandBuilder(sAdapter)
        sAdapter.Fill(sDs, "tFriend")
        sTable = sDs.Tables("tFriend")
        Con.Close()
        DataGridView1.DataSource = sDs.Tables("tFriend")
        DataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect
    End Sub

    Private Sub FriendList_FormClosed(sender As Object, e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        If sDs.HasChanges Then
            If MessageBox.Show("Do you want to Update this table ?", "Update", MessageBoxButtons.YesNo) = DialogResult.Yes Then
                sAdapter.Update(sTable)
                Me.Hide()
                MainForm.Show()
            End If
        End If
        Me.Hide()
        MainForm.Show()
    End Sub

    Private Sub Update_Click(sender As System.Object, e As System.EventArgs) Handles UpdateButton.Click
        If MessageBox.Show("Do you want to Update this table ?", "Update", MessageBoxButtons.YesNo) = DialogResult.Yes Then
            sAdapter.Update(sTable)
        End If
    End Sub
End Class