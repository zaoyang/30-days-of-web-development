---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 22 - Navigating Job Postings

By the end of this article, I hope you'll have a better understanding of how to read job descriptions.  As well as how to decipher what kind of skills they're asking for.

In this section, we will look at the following job posting sites.

- [**GitHub Jobs**](https://jobs.github.com/)
- [**StackOverflow Jobs**](https://stackoverflow.com/jobs)
- [**Smashing Magazine Jobs**](https://www.smashingmagazine.com/jobs/)

I> It should go without saying that there are a TON of job posting sites out there. I choose to list these three because they post positions specifically for developers.

We could spend a whole day looking at different job postings[^book].  However, I am going to assume that, depending on your level of curiosity, you can continue the following exercise for as long as you'd like. I am just going to get you started by analyzing one job posting.

#### Exercise: 
1\. We'll use the Github Jobs site.  I grabbed the first job posting that came up, ["Front-End Web Developer, for Luther College"](https://jobs.github.com/positions/2c3fb9c8-a5e4-4352-885a-8dab924e9c00).  Below is a screenshot of the job posting.  I have highlighted, in pink, some sentences we will analyze[^expired].

![](public/assets/github-jp.png)

**#1.** 
>..."expert knowledge of HTML5/Javascript/ES6/SCSS/CSS.."

In this posting the employer has lumped together HTML + CSS + JavaScript.  Grouping these languages together is common; they are the three amigos of web development languages.  

![](public/assets/three-amigos.gif)

But let's chat about the added **ES6** and **SCSS** verbiage.

You can think of ES as the current "version" of JavaScript[^version].  This ES6 "version" released such significant improvements to JavaScript that by adding ES6, the employer is confirming you are up-to-date with the latest and greatest JavaScript functionality. If you're curious about what exactly ES (ECMA Script) means, and why I've added quotes around "version," [Wikipedia provides a throughout write up](https://en.wikipedia.org/wiki/ECMAScript).

SCSS is a CSS preprocessor. If you think of a Framework like a journalist’s Shorthand, a CSS preprocess is like me using an emoji to say 💩 instead of sh$t.  More formally, a preprocessor is a program that lets you generate CSS from a specific and unique set of syntax rules[^preprocessor].

Precisely what a preprocessor is, or ES6, is not the point. Instead, the takeaway is that the job posting is essentially saying: "we want you to know at an expert level the 3 core foundational languages of the web: HTML, CSS, and JavaScript."

**#2.** 
>"...PHP-based CMS,..."

I am not at all surprised to see PHP and CMS used in the same sentence.  Remember on Day 20 when I talked about how PHP still has a lot of presence in large part because it runs WordPress?  Well here's that statistic in action (WordPress is the most dominate CMS).

It's a little unclear if the employer is using WordPress or switching to another CMS, but the point is, you'll be using a CMS tool.  In theory, the CMS should save you from doing any coding.  But in practice, you'll be problem-solving CMS issues or adding custom functionality that will require you hack your way through PHP.

The takeaway: If you applied to this job posting, it would behoove you to have worked on a WordPress site and hacked around with WordPress' PHP code.

**#3.**
>..."frameworks such as Bootstrap and Foundation..."

Bootstrap and Foundation are popular Frameworks.  I suspect if you knew one or the other, the employer would not require you know both. Frameworks are all relatively similar; you learn one, you can quickly learn another.

There are several other things I would like to discuss in this job posting.  However, to keep this blog post at a reasonable length, I have bulleted out those additional topics.  And have included links to learn more about them.

* [Design](https://www.smashingmagazine.com/2018/01/comprehensive-guide-product-design/)
* [ADA accessibility](https://www.searchenginejournal.com/ada-compliant-website/200106/)
* [Agile](https://www.youtube.com/watch?v=Z9QbYZh1YXY)
* [Git](https://git-scm.com/book/en/v1/Getting-Started-Git-Basics)

### Key things to keep an eye 👀 on when looking at Job Postings

* Employers will **often list several of the same kinds of technologies**.  Maybe 2 or 3 of JavaScript Frameworks, **but only expect you to have experience with one**.  The same can be said for Programming Languages.  You may see a job posting that list both PHP and Python as required languages, but if you have a strong background in Python, they may assume you'll pick up PHP just fine.

* **Job Postings will often confuse Programming Languages, Frameworks, and Libraries**.  They do this for the interest of time and assume you know the difference.  Hint: you should _know_ the difference.

* The smaller the company, the more "jack-of-all-traits" employee they'll be looking for.  If you are looking for a job at Google, expect the posting to get very specific about your skills.  Whereas, if you're applying to a small start-up, you may be required to know how to code, how to work on a CMS tool, and also lead development teams.  Depending on the skills you want to foster, and whether you fancy yourself a focused expert or rounded go-getter, the size of the company matters.

This article was just an introduction.  I trust you will take it from here, searching and researching more specifically about the jobs that interest you and what they require.  It's a good idea to do this in the beginning, while still forging your path so that you can better steer it in the right direction.

Tomorrow, we're going to learn one of my favorite developer tools: the terminal 🙌🏼.

[^preprocessor]: https://developer.mozilla.org/en-US/docs/Glossary/CSS_preprocessor
[^wp]:WordPress is a CMS - Content Management System
[^version]: The truth is ECMA Script is actually up to version 10, but major browsers are still implementing version 6.  I also know JavaScript and ECMA Script are not the same thing, but to avoid overwhelming a beginner, I am keeping things simple.
[^book]:In the book "How to Become a Web Developer: A Field Guide," I analyze different job postings.  I look at one from GitHub Jobs, StackOverflow Jobs, and several from Smashing Magazine Jobs.
[^expired]:It's quite likely that by the time I publish, and you read this article, the job posting will no longer be available. The information we will be discussing, however, still will be.