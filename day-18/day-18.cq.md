---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 18 - What is a Programming Language?

W>I get a little Computer Science 101 in this article.  If you're more of a hands-on, non-theoretical type, feel free to skip today.  If having some background helps you more easily grasp concepts, read on.  Also, note today is the longest of all the blog articles, about a 6 min read.

Before we begin, I want to define what a Programming Language is. So far the only Programming Language we've introduced is JavaScript; HTML and CSS are both markup languages.

Put very simply, a **Programming Language is a language that is used to write a set of instructions**. These instructions are written to produce of output. A **programmer** is someone who writes these instructions.

Q> You might be wondering, but aren't HTML and CSS just a set of instructions telling the browser how to build a web page? This is an easy point of confusion, while there might be some theoretical debate here, HTML and CSS are not considered Programming Languages.

### It hasn't always been about computers 💻
When most developers think about Programming Languages, they assume that they are being used to write a set of instructions for a computer.  But that was not always the case.

Believe it or not, the concept of Programming Languages pre-date the computer.  Have you ever seen or heard an automatic piano 🎹, also known as a pianola?  Pianola's are a piano that automatically take in notched scroll paper.  These notches instruct the piano to press in its keys (see a longer video of one [here](https://www.youtube.com/watch?v=xR8O6k_xuAA)).

![](public/assets/pianola.gif)

Pianola's are not computers.  But they use a Programming Language -  in the form of notched paper - to operate the piano's keys accordingly.

I find it helpful to use the pianola example to clarify that this relationship is not reliant on computers.  Programming languages are just formalized instructions, and a **web developer, programmer, software engineer, etc.** is someone who writes these instructions.

## Different types of Programming Languages
There are hundreds of different kinds of programming languages.  Thankfully, if you pursue a career in Web Development, you will only need to know a couple. And once you know one, the languages get much easier to learn.  

But why are there so many Programming Languages?  There's no short answer to this question, other than to say programmers *wanted* that many.  Programming Languages are like tools, and depending on the job, you may want to use a specific tool.  JavaScript is a popular tool for building websites, and Python is a tool often used for programs in financial trading.  They could both do the other's job, but probably not as well.

## Machine code?
Remember back to Day 3's Operating System blog article?  In that article, I talked about how the Operating System translates your commands into 1s and 0s that the computer can understand.

Programming Languages are not a bunch of 1s and 0s, so at the onset, computers can't understand them.  The same goes with browsers. The only reason browsers can understand JavaScript is because they come packaged with a special JavaScript rendering engine.

I>I find the topic of JavaScript rendering engines fascinating 🤓. [Here's a great resource](https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/) to learn more about this topic in detail. 

Computers can only understand something called machine code.  But what is machine code and why don't we write instructions using it?

To best answer that question, I'm going to show you a sentence written in standard text and then written in two types of Machine Code.

`Studies have shown that goats have accents.  Just like you and I, mate!`

>>>Below is that same goat-accent 🐐 sentence written in Machine Code, hexadecimal, base 16.

```binary
53 74 75 64 69 65 73 20 68 61 76 65 20 73 68 6f 77 6e 20 74 68 61 74 20 67 6f 61 74 73 20 68 61 76 65 20 61 63 63 65 6e 74 73 2e 20 20 4a 75 73 74 20 6c 69 6b 65 20 79 6f 75 20 61 6e 64 20 49 20 6d 61 74 65 21
```

>>>Again, the same sentence, but written in Machine Code binary format, base 2. 

```binary
01000010011001010010000001110011011101010111001001100101001000000111010001101111001000000110010001110010011010010110111001101011001000000111100101101111011101010111001000100000010011110111011001100001011011000111010001101001011011100110010100101110
```

Machine code is either written in hexadecimal or binary.  A computer can read both. If you're like most everyone, reading and writing binary and hexadecimal is not something you can easily do.  The only thing capable of quickly reading through machine code is your computer's central processing unit (CPU).  Your computer likes machine code because the short syntax makes it easy for your CPU to execute it extremely fast[^machinecode].  

#### Low to High-level Programming Languages

Programming Languages can be organized along an axis of those that are more similar to machine code, or less similar.  Programming Languages that are more similar to machine code are called **low-level** languages.  The farther away a Programming Language is to machine code, the more **high-level** it is. 

The lower-level the language, the more specific it is to the computer's hardware.  For example, the language just above machine code is called Assembly language.  It is written specifically for the computer it is on.  Which means that if you write it for your computer, it's likely someone else's computer can't read it.  The computer science term for this is called **portability**.  The Assembly language has *very low* portability because it cannot be "ported" or used by other computers than the one it was written for.

The higher-level the Programming Language, the higher its portability.  JavaScript is a very high-level Programming Language.  Thus, almost anything that fits the definition of a computer - your phone, tablet, your wearable apple watch - can use JavaScript.

Another characteristic of lower-level languages is that, in general, they run faster than higher-level languages.  This is because their syntax is more concise and similar to machine code.

**Higher-Level Languages' Characteristics**
- Generally easier for humans to read
- Higher portability
- Worry less about what computer hardware it's running on
- Runs slower

**Lower-Level Languages' Characteristics**
- Easier for computers to read
- Lower portability
- More likely written for specific hardware
- Runs faster

One big question remains: if a computer can only process machine code, how does it read any programming language?  

The answer lies in translators.  Just like when you have two people who don't speak the same language, you'd enlist a translator to help, computers use third-party translators.  Depending on the language, the computer can choose from two different types of translators: a **compiler** or an **interpreter**.  Sometimes, a computer uses a hybrid approach, using a mix of both a compiler and an interpreter.

### Compiler
A **compiler** takes the entire program and converts it into another file written in binary code.  We saw binary code in a previous example.  It's a whole bunch of 0s and 1s, very Matrix™ like.

![](public/assets/matrix.jpg)

The key to remember with a compiler is that the compiler turns the entire program into binary code and in most cases stores it in another file.  This file is then consumed by the computer that is going to use it.  Up-front the cost is high.  A compiler takes time to compile the whole program, but once it's done, the translated program can be reused and sent to whoever needs it.  

### Interpreter
If a program relies on an interpreter instead of a compiler, that the programming language is shipped directly to whatever is going to consume it.  And there, line-by-line, on the spot, the language is interpreted.

The interpreter generally lives on whatever needs to consume it.  Whereas with a compiler, whoever wants to ship the code uses a compiler and then ships the compiled file.  And that file is immediately ready for consumption.

When we typed JavaScript into the DevTools' Console, we were witnessing an interpreter in action. The moment we hit `return` the browser immediately translated the JavaScript command using the browser's built-in interpreter.  Pretty-nifty indeed 😲.

### What's next?

Whew, sorry for going all CS-101 on you.  But I think it's valuable to understand some of these practical concepts even if you don't _need_ to know them to read/write programming languages.

Tomorrow, we'll leave the traditional lecturing behind, and explore the top 10 Programming Languages.

[^machinecode]:https://en.wikipedia.org/wiki/Machine_code#cite_note-7