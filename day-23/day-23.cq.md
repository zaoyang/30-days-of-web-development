---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 23 - What is a terminal and why should I care?

A terminal is a tool used by every serious developer. Not knowing how to use a terminal would be like a writer not knowing how to use a computer; sure they could use a typewriter or good-old pen and paper, but how effective would they be?

In this chapter, we'll cover what a terminal is, introduce you to some of the more common and useful commands, and hopefully give you a sense of the efficiencies the terminal makes available. This chapter is a required read before going into the Git chapter.

## Opening the terminal

The terminal is a program that you use to type in commands. It is a text input/output environment.

The default terminal is usually white, but you've probably seen black terminals in movies. Featuring a geeky hoodied-hacker doing something like "running an algorithm" or "extinguishing the override" or some other nerd'ish lingo nonsense. Take for example the terminal making an appearance in these well-known movies:

From left to right, these images are from _Girl With The Dragon Tattoo_, _The Fifth Estate_, _Snowden_, and _The Matrix_ where Trinity is correctly using Nmap - [a security scanning software](https://www.youtube.com/watch?v=0PxTAn4g20U).

![](images/6-Terminal/terminals-hollywood.png)

Let's start things off by opening your terminal; every major computer comes packaged with a terminal program.

W> Because macOS and Windows OS users have different default terminal programs, the commands differ slightly. I will start each Exercise with macOS instructions, followed by Instructions for Windows OS users (specifically Windows 10 users).

#### Exercise 1 of 10: Opening the terminal

I>When talking about the actual Terminal program that comes packaged with macOS I'll capitalize the "T", otherwise terminal with a lowercase "t" will refer to any terminal program that interfaces with your Shell - more on that shortly.

> **Windows Users**
> When you see the word Terminal, with a capital "T", replace this word with "PowerShell", which is the Windows OS equivalent of the macOS Terminal.

1\. There are several ways to open the Terminal on a Mac. I will use Spotlight. To use Spotlight, press cmd + spacebar. Then type in "terminal". You should see the terminal app come up. Click on it.

![](images/6-terminal/terminal-spotlight.png)


Have them do the mkdir command, simple and goes into CLI and GUi's next.

> **Windows Users**
> The dominant Shell-CLI environment for Windows 10 users is PowerShell[^powershell]. To navigate to PowerShell, search for the "PowerShell" in the Windows Explorer and open it up.

> The macOS `say` command is really just a shortcut command that comes default with macOS. You will be making a shortcut command also called "say". To do this, enter the following command into your PowerShell.
> {#addpowershellsay}

```powerShell
Add-Type -AssemblyName System.Speech
$say = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
```

> That adds the command `$say`[^$say]. To use the "\$say" you enter the command followed by `.Speak('text you want to say'). To say "bananas" you would enter the following:

```powerShell
$say.Speak("bananas")
```
//  ARG: next investigate closer what a GUI vs. a CLI