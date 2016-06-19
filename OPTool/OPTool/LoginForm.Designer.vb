<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class LoginForm
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(LoginForm))
        Me.LoginID = New System.Windows.Forms.TextBox()
        Me.LoginIDLabel = New System.Windows.Forms.Label()
        Me.LoginPW = New System.Windows.Forms.TextBox()
        Me.LoginPWLabel = New System.Windows.Forms.Label()
        Me.Login = New System.Windows.Forms.Button()
        Me.InfoTextBox = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'LoginID
        '
        Me.LoginID.Location = New System.Drawing.Point(99, 12)
        Me.LoginID.Name = "LoginID"
        Me.LoginID.Size = New System.Drawing.Size(136, 20)
        Me.LoginID.TabIndex = 1
        '
        'LoginIDLabel
        '
        Me.LoginIDLabel.AutoSize = True
        Me.LoginIDLabel.Location = New System.Drawing.Point(6, 15)
        Me.LoginIDLabel.Name = "LoginIDLabel"
        Me.LoginIDLabel.Size = New System.Drawing.Size(87, 13)
        Me.LoginIDLabel.TabIndex = 2
        Me.LoginIDLabel.Text = "Login Username:"
        '
        'LoginPW
        '
        Me.LoginPW.Location = New System.Drawing.Point(99, 48)
        Me.LoginPW.Name = "LoginPW"
        Me.LoginPW.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.LoginPW.Size = New System.Drawing.Size(136, 20)
        Me.LoginPW.TabIndex = 4
        '
        'LoginPWLabel
        '
        Me.LoginPWLabel.AutoSize = True
        Me.LoginPWLabel.Location = New System.Drawing.Point(6, 51)
        Me.LoginPWLabel.Name = "LoginPWLabel"
        Me.LoginPWLabel.Size = New System.Drawing.Size(85, 13)
        Me.LoginPWLabel.TabIndex = 5
        Me.LoginPWLabel.Text = "Login Password:"
        '
        'Login
        '
        Me.Login.Location = New System.Drawing.Point(9, 74)
        Me.Login.Name = "Login"
        Me.Login.Size = New System.Drawing.Size(226, 23)
        Me.Login.TabIndex = 6
        Me.Login.Text = "Login"
        Me.Login.UseVisualStyleBackColor = True
        '
        'InfoTextBox
        '
        Me.InfoTextBox.Location = New System.Drawing.Point(241, 12)
        Me.InfoTextBox.Multiline = True
        Me.InfoTextBox.Name = "InfoTextBox"
        Me.InfoTextBox.ReadOnly = True
        Me.InfoTextBox.Size = New System.Drawing.Size(226, 80)
        Me.InfoTextBox.TabIndex = 7
        Me.InfoTextBox.Text = "OPTool Alpha 0.2 Welcome! Please log in!"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(304, 72)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(126, 20)
        Me.TextBox1.TabIndex = 8
        Me.TextBox1.Visible = False
        '
        'LoginForm
        '
        Me.AcceptButton = Me.Login
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(474, 108)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.InfoTextBox)
        Me.Controls.Add(Me.Login)
        Me.Controls.Add(Me.LoginPWLabel)
        Me.Controls.Add(Me.LoginPW)
        Me.Controls.Add(Me.LoginIDLabel)
        Me.Controls.Add(Me.LoginID)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "LoginForm"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Xara Online - Cyrust Network [Login]"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents LoginID As System.Windows.Forms.TextBox
    Friend WithEvents LoginIDLabel As System.Windows.Forms.Label
    Friend WithEvents LoginPW As System.Windows.Forms.TextBox
    Friend WithEvents LoginPWLabel As System.Windows.Forms.Label
    Friend WithEvents Login As System.Windows.Forms.Button
    Friend WithEvents InfoTextBox As System.Windows.Forms.TextBox
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox

End Class
