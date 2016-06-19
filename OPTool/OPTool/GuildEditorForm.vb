﻿Imports System.Data.SqlClient

Public Class GuildEditorForm
    Dim ErrorHandler As Integer = 0
    '##### SQL Login #####
    Dim Config() As String = Split(My.Computer.FileSystem.ReadAllText("config.txt"), vbNewLine)
    Dim SQLHost As String = Config(0).Substring(Config(0).IndexOf("=") + 1)
    Dim SQLUserName As String = Config(1).Substring(Config(1).IndexOf("=") + 1)
    Dim SQLPassword As String = Config(2).Substring(Config(2).IndexOf("=") + 1)
    Dim Server As String = "World00_Character"
    Private Sub GuildEditorForm_FormClosed(sender As Object, e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        MainForm.Show()
        Me.Hide()
    End Sub
    Public Sub ErrorCheckSub()
        If UserStatus.Text = "Master" Then
        ElseIf UserStatus.Text = "Admin" Then
        ElseIf UserStatus.Text = "Member" Then
        Else
            ErrorHandler = 1
        End If
    End Sub
    Private Sub Search_Click(sender As System.Object, e As System.EventArgs) Handles Search.Click
        If GuildName.Text.Length > 0 Then
            If MainForm.ServerSelect.Text = "Server 01" Then
                Server = "w00_Character"
            ElseIf MainForm.ServerSelect.Text = "Server 02" Then
                Server = "w01_Character"
            End If
            Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & Server & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
            Dim strSQL3 As String = "SELECT COUNT(*) FROM tGuild WHERE sName ='" & GuildName.Text & "';"
            Dim cdo3 As SqlCommand = New SqlCommand(strSQL3, Con)
            Con.Open()
            Dim countchar As Integer = cdo3.ExecuteScalar()
            Con.Close()
            If countchar = "1" Then
                Dim GuildNo As Integer
                Dim WarStatusINT As Integer
                Dim strSQL As String = "SELECT nNo, sName, sPassword, nMaxMembers, nType FROM dbo.tGuild WHERE sName ='" & GuildName.Text & "';"
                Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
                Con.Open()
                Dim Reader As SqlDataReader = cdo.ExecuteReader()
                While Reader.Read
                    GuildNo = Reader(0)
                    GuildName.Text = Reader(1)
                    Password.Text = Reader(2)
                    MaxUser.Text = Reader(3)
                    WarStatusINT = Reader(4)
                End While
                Con.Close()
                Reader.Close()
                Dim strSQL2 As String = "SELECT sID FROM tCharacter WHERE nCharNo IN(SELECT nCharNo FROM tGuildMember WHERE nNo = " & GuildNo & ")"
                Dim cdo2 As SqlCommand = New SqlCommand(strSQL2, Con)
                Con.Open()
                Dim CharacterReader As SqlDataReader = cdo2.ExecuteReader()
                While CharacterReader.Read
                    UserList.Items.Add(CharacterReader(0))
                End While
                CharacterReader.Close()
                Con.Close()
                If WarStatusINT = 0 Then
                    WarStatus.Text = "Friendly"
                ElseIf WarStatusINT = 1 Then
                    WarStatus.Text = "Warable"
                Else
                    Status.Text = "Unknow War Status"
                    ErrorHandler = 1
                End If
                If ErrorHandler = 0 Then
                    Status.Text = "Guild """ & GuildName.Text & """ Found"
                End If
            Else
                Status.Text = "Guild not Found!"
            End If
        Else
            Status.Text = "No Guild Name Selected"
        End If
    End Sub

    Private Sub UserList_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UserList.SelectedIndexChanged
        If MainForm.ServerSelect.Text = "Server 01" Then
            Server = "World00_Character"
        ElseIf MainForm.ServerSelect.Text = "Server 02" Then
            Server = "World01_Character"
        End If
        Dim Status As Integer = 7
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & Server & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL As String = "SELECT nGrade FROM tGuildMember WHERE nCharNo IN (SELECT nCharNo FROM tCharacter WHERE sID = '" & UserList.Text & "');"
        Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
        Con.Open()
        Dim Reader As SqlDataReader = cdo.ExecuteReader()
        While Reader.Read
            Status = Reader(0)
        End While
        Reader.Close()
        Con.Close()
        If Status = 6 Then
            UserStatus.Text = "Member"
        ElseIf Status = 1 Then
            UserStatus.Text = "Admin"
        ElseIf Status = 0 Then
            UserStatus.Text = "Master"
        Else
            StatusStrip1.Text = "Error while reading Member Grade!"
        End If
    End Sub

    Private Sub UpdateButton_Click(sender As System.Object, e As System.EventArgs) Handles UpdateButton.Click
        ErrorCheckSub()
        If ErrorHandler = 0 Then
            If MainForm.ServerSelect.Text = "Server 01" Then
                Server = "World00_Character"
            ElseIf MainForm.ServerSelect.Text = "Server 02" Then
                Server = "World01_Character"
            End If
            Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & Server & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
            Dim strSQL As String = "UPDATE tGuild SET sName = '" & GuildName.Text & "', nMaxMembers = '" & MaxUser.Text & "', nType = '" & WarStatus.Text & "';"
            Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
            Con.Open()
            cdo.ExecuteNonQuery()
            Con.Close()
            Status.Text = "Guild: " & GuildName.Text & " Updated!"
        End If
    End Sub

    Private Sub GuildEditorForm_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        MaxUser.Maximum = 500
        MaxUser.Minimum = 0
    End Sub

    Private Sub UserStatus_SelectedIndexChanged(sender As System.Object, e As System.EventArgs) Handles UserStatus.SelectedIndexChanged
        Dim Status2 As Integer = 7
        Dim nCharNo As Integer = 0
        If MainForm.ServerSelect.Text = "Server 01" Then
            Server = "World00_Character"
        ElseIf MainForm.ServerSelect.Text = "Server 02" Then
            Server = "World01_Character"
        End If
        If UserStatus.Text = "Member" Then
            Status2 = 6
        ElseIf UserStatus.Text = "Admin" Then
            Status2 = 1
        ElseIf UserStatus.Text = "Master" Then
            Status2 = 0
        Else
            StatusStrip1.Text = "Error while reading Member Grade!"
        End If
        If ErrorHandler = 0 Then
            Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & Server & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
            Dim strSQL As String = "SELECT nCharNo FROM tCharacter WHERE sID = '" & UserList.Text & "';"
            Dim cdo As SqlCommand = New SqlCommand(strSQL, Con)
            Con.Open()
            Dim Reader As SqlDataReader = cdo.ExecuteReader()
            While Reader.Read
                nCharNo = Reader(0)
            End While
            Reader.Close()
            Con.Close()
            Dim strSQL2 As String = "UPDATE tGuildMember SET nGrade = '" & Status2 & "' WHERE nCharNo IN (SELECT nCharNo FROM tCharacter WHERE sID = '" & UserList.Text & "');"
            Dim cdo2 As SqlCommand = New SqlCommand(strSQL2, Con)
            Con.Open()
            cdo2.ExecuteNonQuery()
            Con.Close()
            Status.Text = "Character: " & UserList.Text & " become a " & UserStatus.Text
        End If
    End Sub
End Class