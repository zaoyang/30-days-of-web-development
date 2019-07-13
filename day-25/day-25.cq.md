---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 25 - Connection terminal to shell

##How does the terminal fit in?

> **Windows Users**
> When you see the word "terminal" used, that is the equivalent of your PowerShell program. It's confusing, but the macOS terminal program is called Terminal (with a capital T). The macOS Terminal is the application macOS uses to interact with its Shell-CLI, Bash.

To help us answer this question, we are going to do a quick Exercise.

#### Exercise 3 of 10: What Shell does the Terminal use?

1\. On your Terminal program, navigate to Preferences.

![](images/6-terminal/terminal-preferences.png)

> **Windows Users**
> PowerShell is both the terminal app and the shell. Thus, the answer to the question, "What Shell does the PowerShell use?" is PowerShell.

> However, PowerShell _can_ use another Shell-CLI. For example, something to consider later down the road is if you want to use the Bash Shell-CLI. The reason for doing this is the commands between macOS and PowerShell would in most cases be the same. We'll talk more about this in the following Git Chapter.

> To use Bash, you would have to download the Bash Shell and change some of your computer system's settings. If you're curious, [here are instructions](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) for switching to Bash.

2\. Once you have the Preferences open, look towards the middle of the General settings page, and find the area that says "Shells open with:".

![](images/6-terminal/shells-open-with.png)

I suspect your settings will have the radio button “Default login shell” selected. It’s here that the computer is telling the Terminal program to use the Standard shell, though it gives you the option to use another Shell program if you’d like.

> **Windows Users**
> This step does not apply to you because, again, PowerShell is both the Shell and the terminal application.

You can see from the Terminal Preferences option that I can elect what Shell I want to use. Thus, right away we can confirm that Terminal uses a Shell, but Terminal itself is not one. I know that might seem a little pedantic, but the reality is a lot of people don't understand they are different things; we will.

With that in mind, understand that a terminal is a program that runs a Shell-CLI like Bash or Zsh. The Shell is just a wrapper around your operating system. The Terminal is what allows us to use the Shell-CLI.

![](images/6-terminal/shell-cli-gui-terminal.png)

// next we'll look at file paths.