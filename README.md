# Cisco's AnyConnect VPN CLI Tool

**Developer Work From Home Tool!**

AnyConnect is a VPN tool that many organizations use for their work computers. If you're like me and hate the process of waiting for the application to open, grabbing a security code (not required for everyone), waiting for the network to establish and blah blah blah, this tool can do all that from the command line.

## How it works

Using a bash script with your credentials pre-filled, it will use AnyConnect's built-in CLI tool to connect to your company's VPN. You can modify this as you please.

## Configuration (PLEASE READ FIRST)

If you do not want your password stored on your machine:

1. Please uncomment lines 4 & 5, then comment line 7.

If you do not require a security code to login:

1. Please comment out lines 3 & 8 and uncomment line 9.

Make sure to change "[YOUR-VPN-HOST-NO-BRACKETS]" to your VPN host on line 10.

## How To Use

Run in your terminal:

```bash
sh vpn.sh
```

That's it!

## Not sure you VPN host?
Run this command in your terminal:

```bash
sh vpn.sh
```
Then type "hosts" when prompted. From there you'll get a list of available hosts. Please refer to the Configuration section above for implementation.

## Want to collaborate?

If you want to collaborate on a code project, please [send me an email (click me)](mailto:douglas.jaylen.work@gmail.com)
