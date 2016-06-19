<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class GuildEditorForm
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
        Me.GuildEditorGroupBx = New System.Windows.Forms.GroupBox()
        Me.MaxUser = New System.Windows.Forms.NumericUpDown()
        Me.MaxUserLabel = New System.Windows.Forms.Label()
        Me.PasswordLabel = New System.Windows.Forms.Label()
        Me.Password = New System.Windows.Forms.TextBox()
        Me.Search = New System.Windows.Forms.Button()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.UserList = New System.Windows.Forms.ComboBox()
        Me.UserListLabel = New System.Windows.Forms.Label()
        Me.UserStatus = New System.Windows.Forms.ComboBox()
        Me.UserStatusLabel = New System.Windows.Forms.Label()
        Me.UpdateButton = New System.Windows.Forms.Button()
        Me.WarStatus = New System.Windows.Forms.ComboBox()
        Me.WarstatusLabel = New System.Windows.Forms.Label()
        Me.GuildName = New System.Windows.Forms.TextBox()
        Me.GuildNameLabel = New System.Windows.Forms.Label()
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
        Me.Status = New System.Windows.Forms.ToolStripStatusLabel()
        Me.MemberCounter = New System.Windows.Forms.ToolStripStatusLabel()
        Me.GuildEditorGroupBx.SuspendLayout()
        CType(Me.MaxUser, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.StatusStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GuildEditorGroupBx
        '
        Me.GuildEditorGroupBx.Controls.Add(Me.MaxUser)
        Me.GuildEditorGroupBx.Controls.Add(Me.MaxUserLabel)
        Me.GuildEditorGroupBx.Controls.Add(Me.PasswordLabel)
        Me.GuildEditorGroupBx.Controls.Add(Me.Password)
        Me.GuildEditorGroupBx.Controls.Add(Me.Search)
        Me.GuildEditorGroupBx.Controls.Add(Me.GroupBox1)
        Me.GuildEditorGroupBx.Controls.Add(Me.UpdateButton)
        Me.GuildEditorGroupBx.Controls.Add(Me.WarStatus)
        Me.GuildEditorGroupBx.Controls.Add(Me.WarstatusLabel)
        Me.GuildEditorGroupBx.Controls.Add(Me.GuildName)
        Me.GuildEditorGroupBx.Controls.Add(Me.GuildNameLabel)
        Me.GuildEditorGroupBx.Location = New System.Drawing.Point(12, 12)
        Me.GuildEditorGroupBx.Name = "GuildEditorGroupBx"
        Me.GuildEditorGroupBx.Size = New System.Drawing.Size(537, 159)
        Me.GuildEditorGroupBx.TabIndex = 0
        Me.GuildEditorGroupBx.TabStop = False
        Me.GuildEditorGroupBx.Text = "Guild Editor"
        '
        'MaxUser
        '
        Me.MaxUser.Location = New System.Drawing.Point(200, 133)
        Me.MaxUser.Name = "MaxUser"
        Me.MaxUser.Size = New System.Drawing.Size(54, 20)
        Me.MaxUser.TabIndex = 14
        '
        'MaxUserLabel
        '
        Me.MaxUserLabel.AutoSize = True
        Me.MaxUserLabel.Location = New System.Drawing.Point(105, 135)
        Me.MaxUserLabel.Name = "MaxUserLabel"
        Me.MaxUserLabel.Size = New System.Drawing.Size(89, 13)
        Me.MaxUserLabel.TabIndex = 13
        Me.MaxUserLabel.Text = "Maximal Member:"
        '
        'PasswordLabel
        '
        Me.PasswordLabel.AutoSize = True
        Me.PasswordLabel.Location = New System.Drawing.Point(6, 87)
        Me.PasswordLabel.Name = "PasswordLabel"
        Me.PasswordLabel.Size = New System.Drawing.Size(56, 13)
        Me.PasswordLabel.TabIndex = 12
        Me.PasswordLabel.Text = "Password:"
        '
        'Password
        '
        Me.Password.Location = New System.Drawing.Point(75, 84)
        Me.Password.Name = "Password"
        Me.Password.ReadOnly = True
        Me.Password.Size = New System.Drawing.Size(100, 20)
        Me.Password.TabIndex = 11
        '
        'Search
        '
        Me.Search.Location = New System.Drawing.Point(9, 130)
        Me.Search.Name = "Search"
        Me.Search.Size = New System.Drawing.Size(75, 23)
        Me.Search.TabIndex = 10
        Me.Search.Text = "Search"
        Me.Search.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.UserList)
        Me.GroupBox1.Controls.Add(Me.UserListLabel)
        Me.GroupBox1.Controls.Add(Me.UserStatus)
        Me.GroupBox1.Controls.Add(Me.UserStatusLabel)
        Me.GroupBox1.Location = New System.Drawing.Point(212, 19)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(319, 100)
        Me.GroupBox1.TabIndex = 9
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "User Editor"
        '
        'UserList
        '
        Me.UserList.FormattingEnabled = True
        Me.UserList.Location = New System.Drawing.Point(91, 13)
        Me.UserList.Name = "UserList"
        Me.UserList.Size = New System.Drawing.Size(121, 21)
        Me.UserList.TabIndex = 9
        '
        'UserListLabel
        '
        Me.UserListLabel.AutoSize = True
        Me.UserListLabel.Location = New System.Drawing.Point(20, 16)
        Me.UserListLabel.Name = "UserListLabel"
        Me.UserListLabel.Size = New System.Drawing.Size(51, 13)
        Me.UserListLabel.TabIndex = 3
        Me.UserListLabel.Text = "User List:"
        '
        'UserStatus
        '
        Me.UserStatus.FormattingEnabled = True
        Me.UserStatus.Items.AddRange(New Object() {"Member", "Admin", "Master"})
        Me.UserStatus.Location = New System.Drawing.Point(91, 48)
        Me.UserStatus.Name = "UserStatus"
        Me.UserStatus.Size = New System.Drawing.Size(121, 21)
        Me.UserStatus.TabIndex = 8
        '
        'UserStatusLabel
        '
        Me.UserStatusLabel.AutoSize = True
        Me.UserStatusLabel.Location = New System.Drawing.Point(20, 51)
        Me.UserStatusLabel.Name = "UserStatusLabel"
        Me.UserStatusLabel.Size = New System.Drawing.Size(65, 13)
        Me.UserStatusLabel.TabIndex = 7
        Me.UserStatusLabel.Text = "User Status:"
        '
        'UpdateButton
        '
        Me.UpdateButton.Location = New System.Drawing.Point(456, 130)
        Me.UpdateButton.Name = "UpdateButton"
        Me.UpdateButton.Size = New System.Drawing.Size(75, 23)
        Me.UpdateButton.TabIndex = 6
        Me.UpdateButton.Text = "Update"
        Me.UpdateButton.UseVisualStyleBackColor = True
        '
        'WarStatus
        '
        Me.WarStatus.FormattingEnabled = True
        Me.WarStatus.Items.AddRange(New Object() {"Friendly", "Warable"})
        Me.WarStatus.Location = New System.Drawing.Point(75, 53)
        Me.WarStatus.Name = "WarStatus"
        Me.WarStatus.Size = New System.Drawing.Size(102, 21)
        Me.WarStatus.TabIndex = 5
        '
        'WarstatusLabel
        '
        Me.WarstatusLabel.AutoSize = True
        Me.WarstatusLabel.Location = New System.Drawing.Point(6, 56)
        Me.WarstatusLabel.Name = "WarstatusLabel"
        Me.WarstatusLabel.Size = New System.Drawing.Size(63, 13)
        Me.WarstatusLabel.TabIndex = 4
        Me.WarstatusLabel.Text = "War Status:"
        '
        'GuildName
        '
        Me.GuildName.Location = New System.Drawing.Point(77, 23)
        Me.GuildName.Name = "GuildName"
        Me.GuildName.Size = New System.Drawing.Size(100, 20)
        Me.GuildName.TabIndex = 1
        '
        'GuildNameLabel
        '
        Me.GuildNameLabel.AutoSize = True
        Me.GuildNameLabel.Location = New System.Drawing.Point(6, 26)
        Me.GuildNameLabel.Name = "GuildNameLabel"
        Me.GuildNameLabel.Size = New System.Drawing.Size(65, 13)
        Me.GuildNameLabel.TabIndex = 0
        Me.GuildNameLabel.Text = "Guild Name:"
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.Status, Me.MemberCounter})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 184)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.Size = New System.Drawing.Size(559, 22)
        Me.StatusStrip1.TabIndex = 1
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'Status
        '
        Me.Status.Name = "Status"
        Me.Status.Size = New System.Drawing.Size(48, 17)
        Me.Status.Text = "Status..."
        '
        'MemberCounter
        '
        Me.MemberCounter.Name = "MemberCounter"
        Me.MemberCounter.Size = New System.Drawing.Size(98, 17)
        Me.MemberCounter.Text = "Member Counter"
        Me.MemberCounter.Visible = False
        '
        'GuildEditorForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(559, 206)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.GuildEditorGroupBx)
        Me.MaximizeBox = False
        Me.Name = "GuildEditorForm"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Guild Editor"
        Me.GuildEditorGroupBx.ResumeLayout(False)
        Me.GuildEditorGroupBx.PerformLayout()
        CType(Me.MaxUser, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GuildEditorGroupBx As System.Windows.Forms.GroupBox
    Friend WithEvents WarStatus As System.Windows.Forms.ComboBox
    Friend WithEvents WarstatusLabel As System.Windows.Forms.Label
    Friend WithEvents UserListLabel As System.Windows.Forms.Label
    Friend WithEvents GuildName As System.Windows.Forms.TextBox
    Friend WithEvents GuildNameLabel As System.Windows.Forms.Label
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents Status As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents UserStatus As System.Windows.Forms.ComboBox
    Friend WithEvents UserStatusLabel As System.Windows.Forms.Label
    Friend WithEvents UpdateButton As System.Windows.Forms.Button
    Friend WithEvents MemberCounter As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents Search As System.Windows.Forms.Button
    Friend WithEvents PasswordLabel As System.Windows.Forms.Label
    Friend WithEvents Password As System.Windows.Forms.TextBox
    Friend WithEvents MaxUser As System.Windows.Forms.NumericUpDown
    Friend WithEvents MaxUserLabel As System.Windows.Forms.Label
    Friend WithEvents UserList As System.Windows.Forms.ComboBox
End Class
