﻿Imports System.Data.SqlClient

Public Class CSForm
    '##### SQL Login #####
    Dim Config() As String = Split(My.Computer.FileSystem.ReadAllText("config.txt"), vbNewLine)
    Dim SQLHost As String = Config(0).Substring(Config(0).IndexOf("=") + 1)
    Dim SQLUserName As String = Config(1).Substring(Config(1).IndexOf("=") + 1)
    Dim SQLPassword As String = Config(2).Substring(Config(2).IndexOf("=") + 1)
    Dim Server As String = "World00_Character"
    Private Sub CharacterCreate_FormClosing(sender As Object, e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        Me.Hide()
        MainForm.Show()
    End Sub

    Private Sub Check_Click(sender As System.Object, e As System.EventArgs) Handles Check.Click
        If MainForm.ServerSelect.Text = "Server 01" Then
            Server = "w00_Character"
        ElseIf MainForm.ServerSelect.Text = "Server 02" Then
            Server = "w01_Character"
        End If
        Dim i As Integer = 0
        Auflistung.Clear()
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & Server & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL As String
        If ShowDeleted.Checked = False Then
            strSQL = "SELECT sID FROM dbo.tCharacter WHERE sID LIKE '%" & NameTextBox.Text & "%' AND bDeleted = 0;"
        Else
            strSQL = "SELECT sID FROM dbo.tCharacter WHERE sID LIKE '%" & NameTextBox.Text & "%';"
        End If
        Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
        Con.Open()
        Dim CharacterReader As SqlDataReader = cdo.ExecuteReader()
        If CharacterReader.HasRows Then
            While CharacterReader.Read
                i = i + 1
                Auflistung.Text &= CharacterReader(0) & vbNewLine
            End While
            Auflistung.Text &= vbNewLine & "Found " & i & " Rows"
        Else
            MessageBox.Show("User does not Exist!", "OP Tool - Warning")
        End If
        CharacterReader.Close()
        Con.Close()
    End Sub
End Class