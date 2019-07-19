---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 24 - CLI vs GUI?

##What is Shell?

To understand the terminal, you first need to know what a Shell is.

A Shell is an interface that gives you access to your computer's operating system. Think of it as a wrapper around your operating system - technically it wraps around your operating system's kernel[^wrapper]. Hence the name _Shell_ - a shell/protective barrier - around the brain/core of your computer.

![](images/6-terminal/pistachio.png)

Shells come in two forms:

1. **Command Line Interface**: CLI for short, pronounced C. L. I.

2. **General User Interface**: GUI for short, pronounced "gooey".

![](images/6-terminal/cli-gui-shells.png)

### CLI

An example of a CLI is the Bash Shell or PowerShell that comes default with macOS and Windows OS, respectively. CLI's, like Bash or PowerShell, allow you to interact with your computer's operating system via writing text commands.

![](images/6-terminal/cli.png)

We'll explore CLIs in much greater detail, but first, let's look more closely at GUIs.

> **Windows Users**
> Note that PowerShell is not just a Shell; it is also the application that allows the user to interact with the Shell. Compare this to macOS, which has both the default Shell called Bash, as well as the Terminal application (with a capital "T") that allows the user to interact with Bash. PowerShell is a complete environment, acting as both the Shell and the terminal application.

> Additionally, I think it's helpful to understand that PowerShell uses aliases, that point to old commands that correspond to newer ones. For example, the `ls` command we use throughout is short for `Get-ChildItem`. To see a list of all the aliases, type `Get-Alias` into your PowerShell.

### GUI

Though you may not know it, you're very familiar with GUI's. These are programs designed to make it easy for the everyday computer user to _do_ things with their computer. They use graphics, icons, and menus to make navigation and executing commands easy.

An example of a popular GUI is the Finder program (the equivalent program in Windows is "Finder Explorer").

![](images/6-terminal/finder-example.png)

GUIs evolved to make it easier for computer users to do things and navigate around the computer. GUIs are on smartphones, smartwatches, anything computer based you'll find GUIs.

Here is an example of a GUI on the iPhones iOS. The GUI provides the icons, and menus you use to navigate or _do_ things on your iPhone.

![](images/6-terminal/gui-ios.png)

Here's one more example of a GUI on a smartwatch that starts your Tesla - wouldn't that be nice!

![](images/6-terminal/gui-tesla.png)

Before GUIs, computer users only had a keyboard and computer screen as tools. To do anything on the computer the user had to type out commands via a CLI. This process is not intuitive for today's average computer user. As a reaction, GUIs were built. GUIs - for the majority of computer users - make navigation and actions easier to figure out.

In the following Exercise, we are going to spend time with the Finder program, doing simple, everyday navigation.

#### Exercise 2 of 10: Playing with a GUI

1\. Open the Finder program on your mac (cmd + spacebar, type "Finder")

![](images/6-terminal/finder.png)

> **Windows Users**
> This process will be the same for Windows users. Your GUI will just look a little different. Instead of using the Finder program, you'll be using your [Windows Explorer](https://support.microsoft.com/en-us/help/4026617/windows-10-windows-explorer-has-a-new-name) program.

2\. Once open, navigate to your Downloads folder.

![](images/6-terminal/downloads.png)

3\. In your Downloads folder, go to the Finder menu at the top of your computer screen and click File -> New Folder.
{#newfolder}

![](images/6-terminal/new-folder.png)

4\. Name the folder and move some files into it.

We will be using this same folder later. If you'd like, name it the same as my folder here - "nuts" - otherwise name it whatever you'd like. Just remember the name for later exercises.

![](images/6-terminal/nuts-new-folder.png)

Ta-da you just used a GUI! You used the Finder's menu dropdowns to do things like make a folder and move stuff into it.

GUIs are everywhere. If you find yourself navigating, clicking, or selecting graphical elements (icons, menus, etc.) to _do_ something to the device you're using, then it's a safe bet that you are using a GUI.

### CLI

Unlike a GUI, a CLI only takes commands that we type in text. It (generally) does not accept mouse inputs nor does it have icons and buttons to help you _do_ things. Instead, you command it to do things via your keyboard.

We've established that a Shell is a wrapper around a computer's operating system and that a GUI is a type of Shell. The other type of Shell is a CLI - for our purposes, we will refer to this type of Shell as a Shell-CLI.

I> When computer folks are talking about Shells, it's likely they are referring to a Shell-CLI. However, because we know a Shell can be both a GUI or CLI, we will differentiate them here as either Shell-GUI or Shell-CLI.

The standard Shell-CLI shipped with macOS is **Bash**. Bash has been the standard Shell-CLI shipped with the majority of computers since the early 1990s[^bashstandard]. The standard Shell-CLI for Windows 10 users is PowerShell (out-powering the older "Command Prompt" still available on Windows OS).

Though Bash, or PowerShell for Windows users, is the default Shell-CLI you have on your computer, you can also install other Shell-CLIs if you'd like. For example, Zsh (pronounced z Shell), is a popular Shell-CLI alternative. There is a variety of different Shell-CLIs available. The only restriction is that the Shell-CLI you use must be compatible with your computer’s Operating System.

It's not important that you know the differences between these other types of Shell-CLIs. I only pointed this out so that you were aware that there were other types of Shell-CLIs out there.

T> **Quick Summary**: The Shell is a wrapper around your operating system. There are Shell-GUIs and Shell-CLIs, but typically when people talk about Shell, they are referring to the Shell-CLI. A Shell-CLI accepts only text commands and does things in response to those commands. An example of a Shell-CLI is Bash or PowerShell. A Shell-GUI takes inputs from graphical components like icons, menus, and buttons. Examples of Shell-GUI are the macOS's Finder program or Windows OS's Windows Explorer program.
