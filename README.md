Use Load Balancer to Distribute Web Traffic
=
In this project, we will be migrating a web application to 2 virtual machine instances and using an application gateway for routing requests.

In order to execute the bellow instructions, you only need to run *commands\steps.ps1*. All the resources will automatically be deployed for you.

NOT WORKING 502 ERROR!!!

There are multiple ways to create a Load balancer (LB) and the associated backend pool of VMs. Let's create the VMs first and LB afterward. Although, you can create the LB first if you wish so.

### Step 1. Create VMs
You should create 2 or more VMs having the web server running on the default port 80. The VMs will become the part of the Load balancer backend pool later. It is your chooice to choose the Operating System - Windows or Ubuntu.

In **Windows** VM, the web server is **IIS**. Whereas, in **Ubuntu** VM, the popular web server is **Apache**. 

1. Creating an Ubuntu VM with Apache pre installed
2. Creating a Windows VM and configure IIS

On successful deployment, the next step is to RDP into the Windows VM and configure the IIS web server. If you have created two Windows VMs, then add IIS on both VMs web01lb and web02lb and create an index.html.

For web01lb, edit the text to say,
This page is being served by web01lb

For web02lb, edit the text to say,
This page is being served by web02lb

As soon as you are done with configuring IIS, verify if can access the IIS from your local browser.

### Step 2. Create a Load Balancer
Once you have individual VMs ready with web servers, now it's time to set up a Load Balancer.

### Step 3. Verify
Once your Load Balancer is deployed, copy its public IP address and paste it into the browser. If everything is set up correctly, you should see the web server from one of the VMs in your backend pool.

Suppose, if you see the web01 web server, delete/stop that VM from the Virtual Machines service manually to observe if the Load balancer redirects the traffic to the other VM.