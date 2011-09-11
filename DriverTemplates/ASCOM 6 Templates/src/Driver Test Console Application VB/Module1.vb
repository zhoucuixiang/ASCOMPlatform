﻿Module Module1

    Sub Main()
        ' Uncomment the code that's required
        ' choose the device
        Dim id As String = TEMPLATEDEVICECLASS.Choose("")
        If (String.IsNullOrEmpty(id)) Then
            Return
        End If

        ' create this device
        Dim device As TEMPLATEDEVICECLASS = New TEMPLATEDEVICECLASS(id)

        ' this can be replaced by this code, it avoids the chooser and creates the driver class directly.
        ' Dim device As ASCOM.DriverAccess.Dome = New ASCOM.DriverAccess.Dome("ASCOM.TEMPLATEDEVICENAME.TEMPLATEDEVICECLASS")

        ' now run some tests, adding code to your driver so that the tests will pass.
        ' these first tests are common to all drivers.
        Console.WriteLine("name " + device.Name)
        Console.WriteLine("description " + device.Description)
        Console.WriteLine("DriverInfo " + device.DriverInfo)
        Console.WriteLine("driverVersion " + device.DriverVersion)

        ' TODO add more code to test the driver.


        Console.WriteLine("Press Enter to finish")
        Console.ReadLine()
    End Sub

End Module
