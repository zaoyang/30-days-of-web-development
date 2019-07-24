---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 25 - File Paths Part I

File paths are grammars equivalent to the words "except" and "accept."  People don't _really_ know the difference, they guess and hope for the best.  Though I don't have any statistics to back this up, I think a good chunk of developers do the same when it comes to file paths.

In this article, we'll first define what a file path is and then look at the two types, their syntax, and what they mean.

>I**Windows Users**: File path syntax is essentially the same for macOS and Windows OS users. The only difference is the use of forward **`/`** vs. backslashes **`\`** slashes in file paths, where Windows uses backslashes. However, you might notice that PowerShell corrects for this. As such, I have not modified my examples to correct for this as it won't affect what we're doing. If you're curious about the history, I recommend [this](https://www.howtogeek.com/181774/why-windows-uses-backslashes-and-everything-else-uses-forward-slashes/) article.

### What are file paths?

File paths are how you indicate to a computer, where'd you like to go.  For example, in our terminal article, we wanted to navigate to our Downloads folder, so I had you type the following command:

```
cd ~/Downloads
```

In English, you told your computer, "Change Directories to my computer's home directly and then go to the Downloads folder.  The `~/Downloads` was a file path.

You end up using file paths a lot as a developer because you often need to tell a computer where you'd like to either go or where the computer can find something. For example, below is the HTML `img` element with a `src` attribute.  The src attribute is using a file path to tell the browser in this case where to find the image.

```html
<img src="../../images/porcupine.png">
```

There two types of file paths you can use: **absolute path** and **relative path**.

#### Relative File Paths

We will start by defining a **relative file path**. The key to understanding relative file paths is in the name; it means **relative to where you are**.

If a file path starts with a dot **`.`** the same keyboard symbol for a period, then it's a relative file path.

A single dot means you want to look in the same folder you are currently in. In the following example, I'm in my Desktop folder.  My command is telling the computer to Change Directories into the notes folder.  And the notes folder is on my Desktop. 

![](public/assets/single-dot.png)

If you use a double dot **`..`** that means you want to move up one folder.

![](public/assets/double-dot.png)

You can see in the screenshot that I moved up one folder into the `angel` directory. I did this by using the double dot. Then, (highlighted in <span style="color:#007bbb">blue</span>) I moved into the Downloads folder by using `/Downloads`.

Both of these moves were **relative** from where I was on my Desktop.

You might be asking yourself what exactly does "up" mean? Up is easier to show than it is to explain, and hopefully, the following screenshot helps you visualize it. Essentially, "up" means to move into the parent folder of where you currently are.

![](public/assets/up-one-folder.png)

4\. One more quick command to help bring this home. You can chain double-dots together to move up several folders at a time.
In the following screenshot, I moved from my _notes_ folder on my Desktop to my `angel` directory - two folders up.

![](public/assets/move-two-folders-up.png)

Here's what it looks like in my finder. The first `..` moves me into my Desktop. The second `..` moves me into my `angel` directory.

![](public/assets/finder-double-dot-chain.png)

T> Let's review. Relative file paths start from where you _currently_ are. You must start the file path out with a dot **`.`** to indicate you are using a relative file path. If you use one dot, that means you are looking in your current folder. If you use two dots **`..`** that means you are moving up a folder. You can chain double-dots to move several folders at once.

