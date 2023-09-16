    └─$ systemctl list-unit-files --type=service | grep enabled


   systemctl: This is the command used to control and manage systemd services on a Linux system.

  list-unit-files: This subcommand is used to list information about unit files. In this context, it's specifically listing service unit files.

   --type=service: This option filters the list to only include service unit files. It's used to specify the type of unit files you want to list.

  |: This is a pipe operator, which takes the output of the command on the left side and uses it as input for the command on the right side.

   grep enabled: This part of the command uses the grep command to search for lines in the output that contain the word "enabled." It effectively filters the list to only include service unit files that are enabled.


   Disable the Service:

Once you've identified the service name, you can disable it using the systemctl command. Replace service-name with the actual name of the service:

      
      sudo systemctl disable service-name

For example, if you want to disable the "example-service" service:

      
      sudo systemctl disable example-service

Disabling the service will prevent it from starting automatically at boot.

Optional: Stop the Service:

Disabling the service will only prevent it from starting at boot. To stop the service immediately (if it's currently running), you can use the following command:
      
      sudo systemctl stop service-name

Replace service-name with the name of the service you want to stop.

Check the Status:

You can verify that the service is disabled and not running by using the following command:


      systemctl is-enabled service-name

It should return disabled if the service is successfully disabled.
