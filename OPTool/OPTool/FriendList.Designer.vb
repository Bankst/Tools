<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FriendList
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
        Me.CharacterName = New System.Windows.Forms.TextBox()
        Me.ChracterLabel = New System.Windows.Forms.Label()
        Me.Search = New System.Windows.Forms.Button()
        Me.UpdateButton = New System.Windows.Forms.Button()
        Me.DataGridView1 = New System.Windows.Forms.DataGridView()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'CharacterName
        '
        Me.CharacterName.Location = New System.Drawing.Point(102, 12)
        Me.CharacterName.Name = "CharacterName"
        Me.CharacterName.Size = New System.Drawing.Size(100, 20)
        Me.CharacterName.TabIndex = 1
        '
        'ChracterLabel
        '
        Me.ChracterLabel.AutoSize = True
        Me.ChracterLabel.Location = New System.Drawing.Point(12, 15)
        Me.ChracterLabel.Name = "ChracterLabel"
        Me.ChracterLabel.Size = New System.Drawing.Size(73, 13)
        Me.ChracterLabel.TabIndex = 2
        Me.ChracterLabel.Text = "Character No:"
        '
        'Search
        '
        Me.Search.Location = New System.Drawing.Point(221, 12)
        Me.Search.Name = "Search"
        Me.Search.Size = New System.Drawing.Size(75, 23)
        Me.Search.TabIndex = 3
        Me.Search.Text = "Search"
        Me.Search.UseVisualStyleBackColor = True
        '
        'UpdateButton
        '
        Me.UpdateButton.Location = New System.Drawing.Point(366, 12)
        Me.UpdateButton.Name = "UpdateButton"
        Me.UpdateButton.Size = New System.Drawing.Size(75, 23)
        Me.UpdateButton.TabIndex = 5
        Me.UpdateButton.Text = "Update"
        Me.UpdateButton.UseVisualStyleBackColor = True
        '
        'DataGridView1
        '
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.DataGridView1.Location = New System.Drawing.Point(0, 84)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.Size = New System.Drawing.Size(453, 150)
        Me.DataGridView1.TabIndex = 6
        Me.DataGridView1.TabStop = False
        '
        'FriendList
        '
        Me.AcceptButton = Me.Search
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(453, 234)
        Me.Controls.Add(Me.DataGridView1)
        Me.Controls.Add(Me.UpdateButton)
        Me.Controls.Add(Me.Search)
        Me.Controls.Add(Me.ChracterLabel)
        Me.Controls.Add(Me.CharacterName)
        Me.MaximizeBox = False
        Me.Name = "FriendList"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "FriendList"
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents CharacterName As System.Windows.Forms.TextBox
    Friend WithEvents ChracterLabel As System.Windows.Forms.Label
    Friend WithEvents Search As System.Windows.Forms.Button
    Friend WithEvents UpdateButton As System.Windows.Forms.Button
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
End Class
