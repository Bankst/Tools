Imports System.ServiceProcess
Imports System.IO
Imports System.Data.SqlClient

Public Class ServerForm
    '## fix for Debug Saver.. English Time fix and more
    Dim NowWithout As String = DateTime.Now
    Dim Now As String = NowWithout.Replace(":", "-")
    Dim Daywithout As String = DateTime.Today
    Dim Day As String = Daywithout.Replace("/", ".")
    '## error Handler
    '##### SQL Login #####
    Dim Config() As String = Split(My.Computer.FileSystem.ReadAllText("config.txt"), vbNewLine)
    Dim SQLHost As String = Config(0).Substring(Config(0).IndexOf("=") + 1)
    Dim SQLUserName As String = Config(1).Substring(Config(1).IndexOf("=") + 1)
    Dim SQLPassword As String = Config(2).Substring(Config(2).IndexOf("=") + 1)
    Private Sub ServerForm_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        InfoTextBox.Text &= Now & " Willkommen Admin, viel Spaß :)"
        Fonts()
        Zählen()
        OfflineOrOnline()
    End Sub


    Private Sub ServerForm_FormClosed(sender As Object, e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        Me.Hide()
        MainForm.Show()
    End Sub

    Public Function Fonts()
        Dim oFont = New Font("Arial", 10, FontStyle.Regular)
        Label1.Font = oFont
        Label2.Font = oFont
        Label3.Font = oFont
        Label4.Font = oFont
        Label5.Font = oFont
        Label6.Font = oFont
        Label7.Font = oFont
        Label8.Font = oFont
        Label9.Font = oFont
        Label10.Font = oFont
        Label22.Font = oFont
        Label23.Font = oFont
        Label24.Font = oFont
        Label25.Font = oFont
        Label26.Font = oFont
        Label27.Font = oFont
        Label28.Font = oFont
    End Function
    Public Function OfflineOrOnline()
        'Dienst 1
        Dim sc As New ServiceController("AccountLogDB_Server")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label11.Text = "Not Running"
            Label11.ForeColor = Color.Maroon
        Else
            Label11.Text = "Running"
            Label11.ForeColor = Color.DarkGreen
        End If
        'Dienst 2
        Dim sc1 As New ServiceController("GameLog_DB_Server0")
        If sc1.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label12.Text = "Not Running"
            Label12.ForeColor = Color.Maroon
        Else
            Label12.Text = "Running"
            Label12.ForeColor = Color.DarkGreen
        End If
        'Dienst 3
        Dim sc2 As New ServiceController("Xara_RestServer")
        If sc2.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label13.Text = "Not Running"
            Label13.ForeColor = Color.Maroon
        Else
            Label13.Text = "Running"
            Label13.ForeColor = Color.DarkGreen
        End If
        'Dienst 4
        Dim sc3 As New ServiceController("Zone_Server00")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label14.Text = "Not Running"
            Label14.ForeColor = Color.Maroon
        Else
            Label14.Text = "Running"
            Label14.ForeColor = Color.DarkGreen
        End If
        'Dienst 5
        Dim sc4 As New ServiceController("Zone_Server02")
        If sc4.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label15.Text = "Not Running"
            Label15.ForeColor = Color.Maroon
        Else
            Label15.Text = "Running"
            Label15.ForeColor = Color.DarkGreen
        End If
        'Dienst 6
        Dim sc5 As New ServiceController("Character_DB_Server0")
        If sc5.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label16.Text = "Not Running"
            Label16.ForeColor = Color.Maroon
        Else
            Label16.Text = "Running"
            Label16.ForeColor = Color.DarkGreen
        End If

        'Dienst 7
        Dim sc6 As New ServiceController("Login_Server")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label17.Text = "Not Running"
            Label17.ForeColor = Color.Maroon
        Else
            Label17.Text = "Running"
            Label17.ForeColor = Color.DarkGreen
        End If

        'Dienst 8
        Dim sc7 As New ServiceController("Manager_Server0")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label18.Text = "Not Running"
            Label18.ForeColor = Color.Maroon
        Else
            Label18.Text = "Running"
            Label18.ForeColor = Color.DarkGreen
        End If

        'Dienst 9
        Dim sc8 As New ServiceController("Zone_Server01")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label19.Text = "Not Running"
            Label19.ForeColor = Color.Maroon
        Else
            Label19.Text = "Running"
            Label19.ForeColor = Color.DarkGreen
        End If

        'Dienst 10
        Dim sc9 As New ServiceController("Zone_Server03")
        If sc9.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            Label20.Text = "Not Running"
            Label20.ForeColor = Color.Maroon
        Else
            Label20.Text = "Running"
            Label20.ForeColor = Color.DarkGreen
        End If
    End Function

#Region "..:Dienste Starten/Stoppen:.."
    Private Sub Button1_Click_1(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sc As New ServiceController("AccountLogDB_Server")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label11.Text = "Running"
            Label11.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label11.Text = "Not Running"
            Label11.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim sc As New ServiceController("GameLog_DB_Server0")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label12.Text = "Running"
            Label12.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label12.Text = "Not Running"
            Label12.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim sc As New ServiceController("AESIRGAMES_OdinRestServer")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label13.Text = "Running"
            Label13.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label13.Text = "Not Running"
            Label13.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim sc As New ServiceController("Zone_Server00")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label14.Text = "Running"
            Label14.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label14.Text = "Not Running"
            Label14.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Dim sc As New ServiceController("Zone_Server02")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label15.Text = "Running"
            Label15.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label15.Text = "Not Running"
            Label15.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim sc As New ServiceController("Character_DB_Server0")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label16.Text = "Running"
            Label16.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label16.Text = "Not Running"
            Label16.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim sc As New ServiceController("Login_Server")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label17.Text = "Running"
            Label17.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label17.Text = "Not Running"
            Label17.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim sc As New ServiceController("Manager_Server0")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label18.Text = "Running"
            Label18.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label18.Text = "Not Running"
            Label18.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Dim sc As New ServiceController("Zone_Server01")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label19.Text = "Running"
            Label19.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label19.Text = "Not Running"
            Label19.ForeColor = Color.Maroon
        End If
    End Sub

    Private Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Dim sc As New ServiceController("Zone_Server03")
        If sc.Status.Equals(ServiceControllerStatus.Stopped) Or sc.Status.Equals(ServiceControllerStatus.StopPending) Then
            ' Start the service if the current status is stopped.
            InfoTextBox.Text &= Environment.NewLine & Now & " Starting the service..."
            sc.Start()
            Label20.Text = "Running"
            Label20.ForeColor = Color.DarkGreen
        Else
            ' Stop the service if its status is not set to "Stopped".
            InfoTextBox.Text &= Environment.NewLine & Now & " Stopping the service..."
            sc.Stop()
            Label20.Text = "Not Running"
            Label20.ForeColor = Color.Maroon
        End If
    End Sub

#End Region

    Private Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        MainForm.Show()
        Me.Hide()
    End Sub

    Private Sub frmProgramma_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        If Not Directory.Exists("Debug") Then
            Directory.CreateDirectory("Debug")
        End If
        My.Computer.FileSystem.WriteAllText("Debug/" + Day + ".txt", InfoTextBox.Text, True)
        Environment.Exit(0)
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        OfflineOrOnline()
        Zählen()
    End Sub

    Private Sub Zählen()
        Dim Con As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & "OdinAccounts" & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL2 As String = "SELECT COUNT(nEMID) FROM dbo.tAccounts"
        Dim catCMD As SqlCommand = New SqlCommand(strSQL2, Con)
        Con.Open()
        Dim Reader As SqlDataReader = catCMD.ExecuteReader()
        While Reader.Read
            Label25.Text = Reader(0)
        End While
        Reader.Close()
        Con.Close()

        ' Gilden
        Dim Con2 As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & "w00_Character" & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL3 As String = "SELECT COUNT(nNo) FROM dbo.tGuild"
        Dim catCMD2 As SqlCommand = New SqlCommand(strSQL3, Con2)
        Con2.Open()
        Dim Reader2 As SqlDataReader = catCMD2.ExecuteReader()
        While Reader2.Read
            Label26.Text = Reader2(0)
        End While
        Reader2.Close()
        Con2.Close()

        ' Charakterinsgesamt
        Dim Con3 As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & "w00_Character" & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL4 As String = "SELECT COUNT(nCharNo) FROM dbo.tCharacter"
        Dim catCMD3 As SqlCommand = New SqlCommand(strSQL4, Con3)
        Con3.Open()
        Dim Reader3 As SqlDataReader = catCMD3.ExecuteReader()
        While Reader3.Read
            Label27.Text = Label29.Text & " / " & Reader3(0)
        End While
        Reader3.Close()
        Con3.Close()

        ' Charakteronline
        Dim Con4 As SqlConnection = New SqlConnection("Data Source=" & SQLHost & "; Initial Catalog=" & "w00_Character" & "; User ID=" & SQLUserName & "; Password=" & SQLPassword & ";")
        Dim strSQL5 As String = "SELECT COUNT(nCharNo) FROM dbo.LoggedInChars"
        Dim catCMD4 As SqlCommand = New SqlCommand(strSQL5, Con4)
        Con4.Open()
        Dim Reader4 As SqlDataReader = catCMD4.ExecuteReader()
        While Reader4.Read
            Label29.Text = Reader4(0)
        End While
        Reader4.Close()
        Con4.Close()
    End Sub
End Class