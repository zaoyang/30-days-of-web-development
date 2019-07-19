---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 23 - What is a terminal and why should I care?

A terminal is a tool used by every serious developer. Not knowing how to use a terminal would be like a writer not knowing how to use a computer; sure they could use a typewriter or good-old pen and paper, but how effective would they be?

In this article, we'll cover what a terminal is, introduce you to a couple useful commands, and talk briefly about what commands are; hint: it's another type of programming language.

## Opening the terminal

The terminal is a program that you use to type in commands. It is a text input/output environment.

The default terminal is usually white, but you've probably seen black terminals in movies. Featuring a geeky hoodied-hacker doing something like "running an algorithm" or "extinguishing the override" or some other nerd'ish lingo nonsense. Take for example the terminal making an appearance in these well-known movies:

From left to right, these images are from _Girl With The Dragon Tattoo_, _The Fifth Estate_, _Snowden_, and _The Matrix_.

![](public/assets/terminals-hollywood.png)

Let's start things off by opening your terminal; every major computer comes packaged with a terminal program.

#### Exercise: Opening the terminal

I>When talking about the actual Terminal program that comes packaged with macOS I'll capitalize the "T", otherwise terminal with a lowercase "t" will refer to any terminal program that interfaces with your Shell - more on that shortly.

> **Windows Users**
> When you see the word Terminal, with a capital "T", replace this word with "PowerShell", which is the Windows OS equivalent of the macOS Terminal.

1\. There are several ways to open the Terminal on a Mac. I will use Spotlight. To use Spotlight, press cmd + spacebar. Then type in "terminal". You should see the terminal app come up. Click on it.

![](public/assets/terminal-spotlight.png)

> **Windows Users**
> The dominant Shell-CLI environment for Windows 10 users is PowerShell[^powershell]. To navigate to PowerShell, search for the "PowerShell" in the Windows Explorer and open it up.

Real quick, before we start typing commands into the terminal, let's chat briefly about what commands actually are.

### Commands

As we'll learn more about in tomorrow's article, the terminal works with the shell of your computer.  If you remember from day 3, shell's wrap around the meat of your computer.

// ARG image from Abby

The shell is used to taking commands, processing them, and then doing something in response.  For example, when you make a folder on your computer, you were using a program that like the terminal commanded your computers shell to make a folder.  The shell in return did as you asked.

The terminal is similar, but instead of click on menus to make a folder, you type those commands.  For example, making a folder can be done using the command:

```bash
mkdir folderName
```

Where `mkdir` stands for "Make Directory".

I> // ARG comment about directory and folder.

When you run the terminal, you are issuing commands directly to the Shell. You'll often see a $ when you open the terminal program.  The $ is the Shell's symbol for indicating that it's ready to take a command. 

OK, now that we have a sense of what commands are and that when you enter them in the terminal, you're command the Shell to do something, we're ready to type out some commands.

#### Exercise: Introduction to typing commands

1\. Download the [shell-script-practice.sh](src/shell-script-practice.sh) file to your downloads folder on your computer.

2\. If you'd like to peak, go ahead and open this file with your text-editor.  The code you see is written in the Shell Scripting programming language.  XX arg comment here.

3\. Next, open your terminal as we practiced earlier.

4\. From your terminal, we are going to issue our first command called the "Print Working Directory".  This command tells us in our computer where we are.  The concepts of "where" will be more throughouly address when we talk about File Paths in Day 25 and 26. 

In your terminal type the following:
```bash
pwd
```

The terminal should return something like the following. 

// ARG screenshot.

This command basically asked the Shell to return your location, and in my case it's telling me I'm located in XX. 

5\. Next, we're going to tell the terminal to move us into our computer's download folder.  To do this, we are going to use a command called "Change Directories", and tell that command to take us to the downloads folder.

Type the following command in your terminal:
```
cd ~/Downloads
```

Now that we're in our Downloads folder, we can execute the shell-script-practice.sh file we downloaded in there earlier.

To do this, run the following command:
```
bash shell-script-practice.sh
```

The script will then ask you a couple questions, go ahead and answer them.

ARG gif

Let's recap what we just did.  We used the terminal to navigate to our computer's downloads folder.  We then told the terminal to use the bash shell to open the file "shell-script-practice.sh".  If you peaked at the code on this file, you would have seen shell scripting language that walks you through those questions.

I> BASH is the default shell, blah blah
// Compare with Gif process if used a GUI.  Which we'll talk about more in tomorrow's article.

Nice work.  You just got your first taste of using the terminal, and running a shell script.  If this all seems like a lot, that's OK.  It is.  This is just an introduction, but learning about shell-scripting, and most importantly how to use the terminal will be crucial as you learn more about web development.

If you'd like to learn more terminal commands, I recommend this link XX, and if you like to learn more about shell scripting I recommend this article. XX.

Tomorrow we'll look closer at the differences between the terminal program and something like the Finder program (Macs) and XX (Windows).