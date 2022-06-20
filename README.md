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

## Changelog

***v1.0.1***

Issue: Variable strings with "%" character.

Reason: printf is a shell built into Bash, similar to C printf(). printf uses special characters for string formatting. When a string contains a "%", that is not being used for formatting purposes, the printf command does not know how to handle it. Thus, requiring a specific format to instantiate the variable string.

Fix: Use the printf FORMAT [ARGUMENT] structure. i.e print "%s" $variable

***v1.0.0***

Initial release.

## Add script to your PATH? 

This Stackoverflow post will guide you step by step: [Add bash script to PATH](https://stackoverflow.com/questions/20054538/add-a-bash-script-to-path)


## Want to collaborate?

If you want to collaborate on a code project, please [send me an email (click me)](mailto:douglas.jaylen.work@gmail.com)
