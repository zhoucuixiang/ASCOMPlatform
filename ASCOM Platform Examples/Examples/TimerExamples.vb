﻿Public Class TimerExamples
    ' PLATFORM 6 Warning

    ' The ASCOM.Utilities.Timer class is now considered obsolete for use within .NET environments
    ' Please use System.Timers.Timer in your projects rather than ASCOM.Utilities.Timer or
    ' System.Forms.Timer which have issues when running in some non-windowed, console or scripting
    ' applications.

    'Set variable type to ITimer
    Private WithEvents ASCOMTimer As ASCOM.Utilities.Timer

    Sub Example()
        Dim StartTime As Date

        ASCOMTimer = New ASCOM.Utilities.Timer 'Create timer and set interval to 2 seconds
        ASCOMTimer.Interval = 2000

        StartTime = Now 'Record the start of the wait period
        MsgBox("starting time wait loop")

        Do 'Loop for 10 seconds
            Threading.Thread.Sleep(1000) 'Wait for a seond
            Application.DoEvents() 'Process events
        Loop Until Now.Subtract(StartTime).TotalSeconds > 10.0

        MsgBox("Finished time wait loop")
        ASCOMTimer.Enabled = False 'Clean up at end of the wait period
        ASCOMTimer.Dispose()
        ASCOMTimer = Nothing

    End Sub

    Sub TickHandler() Handles ASCOMTimer.Tick
        'This sub wil be called each time the timer event fires, every 2 seconds in this exanple
        MsgBox("ASCOMTimer has Ticked!") 'Show that the event has fired
    End Sub
End Class
