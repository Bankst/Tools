<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class CSForm
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
        Me.NameLabel = New System.Windows.Forms.Label()
        Me.NameTextBox = New System.Windows.Forms.TextBox()
        Me.Check = New System.Windows.Forms.Button()
        Me.Auflistung = New System.Windows.Forms.TextBox()
        Me.ShowDeleted = New System.Windows.Forms.CheckBox()
        Me.SuspendLayout()
        '
        'NameLabel
        '
        Me.NameLabel.AutoSize = True
        Me.NameLabel.Location = New System.Drawing.Point(59, 15)
        Me.NameLabel.Name = "NameLabel"
        Me.NameLabel.Size = New System.Drawing.Size(38, 13)
        Me.NameLabel.TabIndex = 0
        Me.NameLabel.Text = "Name:"
        '
        'NameTextBox
        '
        Me.NameTextBox.Location = New System.Drawing.Point(103, 12)
        Me.NameTextBox.Name = "NameTextBox"
        Me.NameTextBox.Size = New System.Drawing.Size(121, 20)
        Me.NameTextBox.TabIndex = 1
        '
        'Check
        '
        Me.Check.Location = New System.Drawing.Point(230, 10)
        Me.Check.Name = "Check"
        Me.Check.Size = New System.Drawing.Size(75, 23)
        Me.Check.TabIndex = 4
        Me.Check.Text = "Check"
        Me.Check.UseVisualStyleBackColor = True
        '
        'Auflistung
        '
        Me.Auflistung.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.Auflistung.Location = New System.Drawing.Point(0, 59)
        Me.Auflistung.Multiline = True
        Me.Auflistung.Name = "Auflistung"
        Me.Auflistung.ReadOnly = True
        Me.Auflistung.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.Auflistung.Size = New System.Drawing.Size(358, 120)
        Me.Auflistung.TabIndex = 5
        '
        'ShowDeleted
        '
        Me.ShowDeleted.AutoSize = True
        Me.ShowDeleted.Location = New System.Drawing.Point(12, 38)
        Me.ShowDeleted.Name = "ShowDeleted"
        Me.ShowDeleted.Size = New System.Drawing.Size(117, 17)
        Me.ShowDeleted.TabIndex = 6
        Me.ShowDeleted.Text = "Deleted Characters"
        Me.ShowDeleted.UseVisualStyleBackColor = True
        '
        'CSForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(358, 179)
        Me.Controls.Add(Me.ShowDeleted)
        Me.Controls.Add(Me.Auflistung)
        Me.Controls.Add(Me.Check)
        Me.Controls.Add(Me.NameTextBox)
        Me.Controls.Add(Me.NameLabel)
        Me.MaximizeBox = False
        Me.Name = "CSForm"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Character Search"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents NameLabel As System.Windows.Forms.Label
    Friend WithEvents NameTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Check As System.Windows.Forms.Button
    Friend WithEvents Auflistung As System.Windows.Forms.TextBox
    Friend WithEvents ShowDeleted As System.Windows.Forms.CheckBox
End Class
