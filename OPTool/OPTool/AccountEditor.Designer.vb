<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AccountEditor
    Inherits System.Windows.Forms.Form

    'Das Formular überschreibt den Löschvorgang, um die Komponentenliste zu bereinigen.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Wird vom Windows Form-Designer benötigt.
    Private components As System.ComponentModel.IContainer

    'Hinweis: Die folgende Prozedur ist für den Windows Form-Designer erforderlich.
    'Das Bearbeiten ist mit dem Windows Form-Designer möglich.  
    'Das Bearbeiten mit dem Code-Editor ist nicht möglich.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.AccountS = New System.Windows.Forms.GroupBox()
        Me.UpdateButton = New System.Windows.Forms.Button()
        Me.AccountNoBox = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.AccIDBox = New System.Windows.Forms.TextBox()
        Me.AccID = New System.Windows.Forms.Label()
        Me.Search = New System.Windows.Forms.Button()
        Me.Password = New System.Windows.Forms.Label()
        Me.Auth = New System.Windows.Forms.Label()
        Me.PasswordBox = New System.Windows.Forms.TextBox()
        Me.AuthBox = New System.Windows.Forms.ComboBox()
        Me.AccountInf = New System.Windows.Forms.GroupBox()
        Me.IPLabel = New System.Windows.Forms.Label()
        Me.Blocked = New System.Windows.Forms.ComboBox()
        Me.BlockedLabel = New System.Windows.Forms.Label()
        Me.EmailBox = New System.Windows.Forms.TextBox()
        Me.Email = New System.Windows.Forms.Label()
        Me.Athens = New System.Windows.Forms.GroupBox()
        Me.CashBox = New System.Windows.Forms.TextBox()
        Me.Cash = New System.Windows.Forms.Label()
        Me.Login = New System.Windows.Forms.Button()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.InfoLabel = New System.Windows.Forms.ToolStripStatusLabel()
        Me.AccountS.SuspendLayout()
        Me.AccountInf.SuspendLayout()
        Me.Athens.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'AccountS
        '
        Me.AccountS.Controls.Add(Me.UpdateButton)
        Me.AccountS.Controls.Add(Me.AccountNoBox)
        Me.AccountS.Controls.Add(Me.Label1)
        Me.AccountS.Controls.Add(Me.AccIDBox)
        Me.AccountS.Controls.Add(Me.AccID)
        Me.AccountS.Controls.Add(Me.Search)
        Me.AccountS.Location = New System.Drawing.Point(12, 12)
        Me.AccountS.Name = "AccountS"
        Me.AccountS.Size = New System.Drawing.Size(398, 84)
        Me.AccountS.TabIndex = 0
        Me.AccountS.TabStop = False
        Me.AccountS.Text = "Account Search"
        '
        'UpdateButton
        '
        Me.UpdateButton.Location = New System.Drawing.Point(12, 55)
        Me.UpdateButton.Name = "UpdateButton"
        Me.UpdateButton.Size = New System.Drawing.Size(75, 23)
        Me.UpdateButton.TabIndex = 7
        Me.UpdateButton.Text = "Update"
        Me.UpdateButton.UseVisualStyleBackColor = True
        '
        'AccountNoBox
        '
        Me.AccountNoBox.Location = New System.Drawing.Point(260, 22)
        Me.AccountNoBox.Name = "AccountNoBox"
        Me.AccountNoBox.Size = New System.Drawing.Size(100, 20)
        Me.AccountNoBox.TabIndex = 6
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(193, 25)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(61, 13)
        Me.Label1.TabIndex = 5
        Me.Label1.Text = "Acount No:"
        '
        'AccIDBox
        '
        Me.AccIDBox.Location = New System.Drawing.Point(76, 22)
        Me.AccIDBox.Name = "AccIDBox"
        Me.AccIDBox.Size = New System.Drawing.Size(100, 20)
        Me.AccIDBox.TabIndex = 4
        '
        'AccID
        '
        Me.AccID.AutoSize = True
        Me.AccID.Location = New System.Drawing.Point(6, 25)
        Me.AccID.Name = "AccID"
        Me.AccID.Size = New System.Drawing.Size(64, 13)
        Me.AccID.TabIndex = 1
        Me.AccID.Text = "Account ID:"
        '
        'Search
        '
        Me.Search.Location = New System.Drawing.Point(317, 55)
        Me.Search.Name = "Search"
        Me.Search.Size = New System.Drawing.Size(75, 23)
        Me.Search.TabIndex = 0
        Me.Search.Text = "Search"
        Me.Search.UseVisualStyleBackColor = True
        '
        'Password
        '
        Me.Password.AutoSize = True
        Me.Password.Location = New System.Drawing.Point(9, 25)
        Me.Password.Name = "Password"
        Me.Password.Size = New System.Drawing.Size(56, 13)
        Me.Password.TabIndex = 2
        Me.Password.Text = "Password:"
        '
        'Auth
        '
        Me.Auth.AutoSize = True
        Me.Auth.Location = New System.Drawing.Point(9, 51)
        Me.Auth.Name = "Auth"
        Me.Auth.Size = New System.Drawing.Size(78, 13)
        Me.Auth.TabIndex = 3
        Me.Auth.Text = "Authentication:"
        '
        'PasswordBox
        '
        Me.PasswordBox.Location = New System.Drawing.Point(79, 25)
        Me.PasswordBox.Name = "PasswordBox"
        Me.PasswordBox.Size = New System.Drawing.Size(100, 20)
        Me.PasswordBox.TabIndex = 5
        '
        'AuthBox
        '
        Me.AuthBox.FormattingEnabled = True
        Me.AuthBox.Items.AddRange(New Object() {"1", "2", "3", "4", "5", "6", "7", "8", "9", "_______", "Want More ? Ask Canic!"})
        Me.AuthBox.Location = New System.Drawing.Point(93, 51)
        Me.AuthBox.Name = "AuthBox"
        Me.AuthBox.Size = New System.Drawing.Size(86, 21)
        Me.AuthBox.TabIndex = 6
        '
        'AccountInf
        '
        Me.AccountInf.Controls.Add(Me.IPLabel)
        Me.AccountInf.Controls.Add(Me.Blocked)
        Me.AccountInf.Controls.Add(Me.BlockedLabel)
        Me.AccountInf.Controls.Add(Me.EmailBox)
        Me.AccountInf.Controls.Add(Me.Email)
        Me.AccountInf.Controls.Add(Me.AuthBox)
        Me.AccountInf.Controls.Add(Me.PasswordBox)
        Me.AccountInf.Controls.Add(Me.Password)
        Me.AccountInf.Controls.Add(Me.Auth)
        Me.AccountInf.Location = New System.Drawing.Point(12, 102)
        Me.AccountInf.Name = "AccountInf"
        Me.AccountInf.Size = New System.Drawing.Size(449, 84)
        Me.AccountInf.TabIndex = 1
        Me.AccountInf.TabStop = False
        Me.AccountInf.Text = "Account Information"
        '
        'IPLabel
        '
        Me.IPLabel.AutoSize = True
        Me.IPLabel.Location = New System.Drawing.Point(321, 54)
        Me.IPLabel.Name = "IPLabel"
        Me.IPLabel.Size = New System.Drawing.Size(14, 13)
        Me.IPLabel.TabIndex = 10
        Me.IPLabel.Text = "~"
        '
        'Blocked
        '
        Me.Blocked.FormattingEnabled = True
        Me.Blocked.Items.AddRange(New Object() {"False", "True"})
        Me.Blocked.Location = New System.Drawing.Point(260, 51)
        Me.Blocked.Name = "Blocked"
        Me.Blocked.Size = New System.Drawing.Size(54, 21)
        Me.Blocked.TabIndex = 9
        '
        'BlockedLabel
        '
        Me.BlockedLabel.AutoSize = True
        Me.BlockedLabel.Location = New System.Drawing.Point(210, 54)
        Me.BlockedLabel.Name = "BlockedLabel"
        Me.BlockedLabel.Size = New System.Drawing.Size(52, 13)
        Me.BlockedLabel.TabIndex = 8
        Me.BlockedLabel.Text = "Blocked: "
        '
        'EmailBox
        '
        Me.EmailBox.Location = New System.Drawing.Point(251, 19)
        Me.EmailBox.Name = "EmailBox"
        Me.EmailBox.Size = New System.Drawing.Size(192, 20)
        Me.EmailBox.TabIndex = 2
        '
        'Email
        '
        Me.Email.AutoSize = True
        Me.Email.Location = New System.Drawing.Point(210, 25)
        Me.Email.Name = "Email"
        Me.Email.Size = New System.Drawing.Size(35, 13)
        Me.Email.TabIndex = 7
        Me.Email.Text = "Email:"
        '
        'Athens
        '
        Me.Athens.Controls.Add(Me.CashBox)
        Me.Athens.Controls.Add(Me.Cash)
        Me.Athens.Location = New System.Drawing.Point(416, 26)
        Me.Athens.Name = "Athens"
        Me.Athens.Size = New System.Drawing.Size(176, 64)
        Me.Athens.TabIndex = 2
        Me.Athens.TabStop = False
        Me.Athens.Text = "Athens Website Editor"
        '
        'CashBox
        '
        Me.CashBox.Location = New System.Drawing.Point(46, 24)
        Me.CashBox.Name = "CashBox"
        Me.CashBox.Size = New System.Drawing.Size(100, 20)
        Me.CashBox.TabIndex = 1
        '
        'Cash
        '
        Me.Cash.AutoSize = True
        Me.Cash.Location = New System.Drawing.Point(6, 27)
        Me.Cash.Name = "Cash"
        Me.Cash.Size = New System.Drawing.Size(34, 13)
        Me.Cash.TabIndex = 0
        Me.Cash.Text = "Cash:"
        '
        'Login
        '
        Me.Login.Location = New System.Drawing.Point(487, 143)
        Me.Login.Name = "Login"
        Me.Login.Size = New System.Drawing.Size(75, 23)
        Me.Login.TabIndex = 3
        Me.Login.Text = "Login Check"
        Me.Login.UseVisualStyleBackColor = True
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.InfoLabel})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 188)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(604, 22)
        Me.StatusStrip1.TabIndex = 4
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'InfoLabel
        '
        Me.InfoLabel.Name = "InfoLabel"
        Me.InfoLabel.Size = New System.Drawing.Size(45, 17)
        Me.InfoLabel.Text = "Status.."
        '
        'AccountEditor
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(604, 210)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.Login)
        Me.Controls.Add(Me.Athens)
        Me.Controls.Add(Me.AccountInf)
        Me.Controls.Add(Me.AccountS)
        Me.MaximizeBox = False
        Me.Name = "AccountEditor"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "AccountEditor"
        Me.AccountS.ResumeLayout(False)
        Me.AccountS.PerformLayout()
        Me.AccountInf.ResumeLayout(False)
        Me.AccountInf.PerformLayout()
        Me.Athens.ResumeLayout(False)
        Me.Athens.PerformLayout()
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents AccountS As System.Windows.Forms.GroupBox
    Friend WithEvents Search As System.Windows.Forms.Button
    Friend WithEvents AuthBox As System.Windows.Forms.ComboBox
    Friend WithEvents PasswordBox As System.Windows.Forms.TextBox
    Friend WithEvents AccIDBox As System.Windows.Forms.TextBox
    Friend WithEvents Auth As System.Windows.Forms.Label
    Friend WithEvents Password As System.Windows.Forms.Label
    Friend WithEvents AccID As System.Windows.Forms.Label
    Friend WithEvents AccountNoBox As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents AccountInf As System.Windows.Forms.GroupBox
    Friend WithEvents EmailBox As System.Windows.Forms.TextBox
    Friend WithEvents Email As System.Windows.Forms.Label
    Friend WithEvents Athens As System.Windows.Forms.GroupBox
    Friend WithEvents CashBox As System.Windows.Forms.TextBox
    Friend WithEvents Cash As System.Windows.Forms.Label
    Friend WithEvents Login As System.Windows.Forms.Button
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents InfoLabel As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents Blocked As System.Windows.Forms.ComboBox
    Friend WithEvents BlockedLabel As System.Windows.Forms.Label
    Friend WithEvents UpdateButton As System.Windows.Forms.Button
    Friend WithEvents IPLabel As System.Windows.Forms.Label
End Class
