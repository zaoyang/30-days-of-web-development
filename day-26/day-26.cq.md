---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 26 - File Paths Part II

## File Paths

I would love to dive into commands, but I think it's really important that before we do we take a quick detour to talk about file paths.

> **Windows Users**
> File path syntax is essentially the same for macOS and Windows OS users. The only difference is the use of forward **`/`** vs. backslashes **`\`** slashes in file paths, where Windows uses backslashes. However, you might notice that PowerShell corrects for this. As such, I have not modified my examples to correct for this as it won't affect what we're doing. If you're curious about the history, I recommend [this](https://www.howtogeek.com/181774/why-windows-uses-backslashes-and-everything-else-uses-forward-slashes/) article.

To effectively use your terminal, you need to know - generally - how to navigate around it. The reason is that unlike the Finder, there are no pre-populated drop down menus or organized lists for us to choose where on our computer we want to go. We have to tell our computer via directions - in the form of file paths - where to take us.

To learn about file paths, we'll start with a quick command - **`pwd`**, which stands for **Print Working Directory**[^pwd]. The `pwd` command tell you _where_ on your computer you are.

I>Directories and Folders are the same thing. The word Directory comes from the CLI environment and precedes the term Folder. Hence why it's `pwd` and not `pwf`. The word Folder came about from the GUI environment. In practice, when you're talking about a container of files, a Folder is probably the better word choice[^folders].

1\. In your Terminal type `pwd`.

What returns is your current location. For example, if I'm inside my Desktop on my Terminal, the return of that statement would look like the following:

![](images/6-terminal/pwd-desktop.png)

And this is what that would look like if I were in my Finder:

![](images/6-terminal/finder-desktop.png)

So that's how you find out where you are on your computer, but how do you go from where you are to somewhere else? The answer is file paths. You use file paths to tell the computer where you'd like to go (i.e., computer speak for directions).

For example, say I was on my Desktop, and I wanted to move into the "nuts" folder in Downloads. The shortest file path to do this would be as follows:

```bash
../Downloads/nuts/
```

Breaking this down, the file path is saying:

> "go up a folder, then move into the Downloads folder, and next into the nuts folder."

![](images/6-terminal/file-path-breakdown.png)

If you're a bit confused, that's OK. Learning file paths can be a bit tricky at first, but once you get them, terminal life will become a lot easier. Let's dig into it more.

There two types of file paths you can use: **absolute path** and **relative path**.

#### Relative File Paths

We will start by defining a **relative file path**. The key to understanding relative file paths is in the name; it means **relative to where you are**.

To understand what this means, we'll do a quick Exercise in the Terminal.

#### Exercise 6 of 10: Terminal and Relative File Paths

1\. On your Terminal, navigate to the Desktop. For now, I'm going to show you a "hack" kind of way to do this, but after this chapter, you should have a better sense of how to do it via commands in the Terminal.

With your Terminal and Finder, windows open side-by-side, in the Terminal first type `cd` (make sure there's space after `cd`) and then drag the Desktop icon over to the Terminal and let go.

![](images/6-terminal/drag-desktop.png)

> **Windows Users**
> Drag and drop may not be possible in Windows. As such just use the tilde to indicate you want to start at the root. We will discuss the tilde more in the next Exercise. `cd ~/Desktop`

Once you drag it over, the file path will be posted there for you. Press enter, and ta-dah you've navigated to the Desktop. Your file path will look different than mine - if only because your computer is likely not named 'angel'.

![](images/6-terminal/desktop-drag-file-path.png)

2\. Now that we are _in_ our Desktop let's use a relative file path to move to another location on our computer. Remember wherever we go is relative to where we currently are. Right now, we are in our Desktop.

Let's say we want to go to our _notes_ folder we created earlier. We know it's on the Desktop, so it is just a short jump into that folder (Desktop -> notes). Using the `cd` command followed by the following relative file path gets us there.

![](images/6-terminal/cd-dot-notes.png)

3\. And what if we wanted to move into our Downloads folder from our Desktop? That would look like the following:

![](images/6-terminal/dot-dot-downloads.png)

The commonality between both of these is that they start with a dot **`.`** the same keyboard symbol for a period. All you have to do to indicate you want to use a relative file path is to start the path off with a dot.

If you use one dot, like our first example, that means you want to look in the same folder you are currently in. In our case, we were looking for the _notes_ folder while we were inside our Desktop.

![](images/6-terminal/single-dot.png)

If you use a double dot **`..`** that means you want to move up one folder.

![](images/6-terminal/double-dot.png)

You can see in the screenshot that I moved up one folder into the `angel` directory. I did this by using the double dot. Then, (highlighted in <span style="color:#007bbb">blue</span>) I moved into the Downloads folder by using `/Downloads`.

Both of these moves were **relative** from where I was on my Desktop.

You might be asking yourself what exactly does "up" mean? Up is easier to show than it is to explain, and hopefully, the following screenshot helps you visualize it. Essentially, "up" means to move into the parent folder of where you currently are.

![](images/6-terminal/up-one-folder.png)

4\. One more quick command to help bring this home. You can chain double-dots together to move up several folders at a time. Try it out. In the following screenshot, I moved from my _notes_ folder on my Desktop to my `angel` directory - two folders up.

![](images/6-terminal/move-two-folders-up.png)

Here's what it looks like in my finder. The first `..` moves me into my Desktop. The second `..` moves me into my `angel` directory.

![](images/6-terminal/finder-double-dot-chain.png)

T> Let's review. Relative file paths start from where you _currently_ are. You must start the file path out with a dot **`.`** to indicate you are using a relative file path. If you use one dot that means you are looking in your current folder. If you use two dots **`..`** that means you are moving up a folder. You can chain double-dots to move several folders at once.

#### Absolute File Paths

Absolute file paths, use the **root directory** to figure out navigation. The root directory 🌳 ( "root" to elicit the image of a tree's beginnings) is the topmost folder of your file system.

![](images/6-terminal/root-directory.png)

The absolute file path starts at the root directory.

> **Windows Users**
> The root concept is the same for Windows users. The only difference is that instead of "Macintosh HD" the drive is "C:/Windows". If you tab as you enter in the file path, PowerShell will automatically correct any potential errors in your file path. I recommend using this auto-complete feature.

To indicate you are using the absolute file path, you start the file path off with a forward slash **`/`**. No dot. The following is the absolute file path to our Desktop.

![](images/6-terminal/root-directory-2.png)

Here is what that file path looks likes on the Finder.

![](images/6-terminal/root-directory-3.png)

Let's use a directions analogy to help clarify. Imagine for a moment you are giving a friend directions to your house. Say your friend is at their home. Your directions will start from their house (let's call this the "beginning") and go to your home. The directions might sound something like:

> "Out of your apartment, head East on Main street until you reach 4th street. Take a right on to 4th street. I'm the last house on the right."

Let's call that an absolute path - your directions are starting from the beginning - or at least how I've defined beginning here.

But later, another friend is already at Starbucks on Main street and needs directions. You might say to them:

> "take a left out of the Starbucks onto 4th street. I'm the last house on the right."

![](images/6-terminal/map.png)

Your first friend is starting from the "beginning" and thus you are giving them directions akin to an absolute file path. Your Starbucks friend is starting somewhere else, and you give them directions relative to where they're at, much like a relative file path.

// ARG: maybe no exercise. 

// Next File Systems and paths.