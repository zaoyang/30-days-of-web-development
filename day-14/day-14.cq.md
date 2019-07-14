---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 14 - CSS Units

We've been using CSS Units throughout our examples, but I have yet to stop and address what they mean.

CSS Units, like the Color value `blue` or `rgba(0,0,0,.5), are the value in the property:value pair of CSS.

Quick refresher:

![](public/assets/selector-property-value.png)

Some CSS properties take color values, and others take CSS Units.  For example, the CSS padding property expects a CSS unit as a value.

![](public/assets/selector-property-value-unit.png)

The pixel unit type `px` is a **Unit** that CSS properties use when describing the size of something. Any CSS property that deals with size accepts the CSS Unit `px`. But `px` is just one of the many unit sizes.

| Unit |                                                                                                                   Description                                                                                                                    |
| :--: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|  px  |                                                                      Pixels are relative to the view device. In general, pixels measure out to be 1 px = 1/96th of an inch.                                                                      |
|  pt  |                                                                                        Points. Traditionally used in print media. 1 pt = 1/72 of an inch.                                                                                        |
|  em  | em is a scalable unit. You define a base, and then use that as a reference point. Say 1em is equal to the current font size then 2em would be double the current font size. They are popular on the web because they are "mobile friendly." |
|  %   |                                                                                Percent. An example might be 50%. These are also scalable and relative to a base.                                                                                 |

In most cases, these units are set to be equal to each other such that:
16px = 12pt = 1em = 100%. Let's apply these to the following text:

| font-size: value |               Example                |
| :--------------: | :----------------------------------: |
| font-size: 16px  | <p style="font-size:16px">Howdy!</p> |
| font-size: 12pt  | <p style="font-size:12pt">Howdy!</p> |
|  font-size: 1em  | <p style="font-size:1em">Howdy!</p>  |
| font-size: 100%  | <p style="font-size:100%">Howdy!</p> |

Now let's see what happens when we use the same number for each unit type. Notice how much larger em is than 5%? You can't even see 5%, and 5em is huge.

| font-size: value |               Example               |
| :--------------: | :---------------------------------: |
|  font-size: 5px  | <p style="font-size:5px">Howdy!</p> |
|  font-size: 5pt  | <p style="font-size:5pt">Howdy!</p> |
|  font-size: 5em  | <p style="font-size:5em">Howdy!</p> |
|  font-size: 5%   | <p style="font-size:5%">Howdy!</p>  |


#### Exercise: Using the DevTools to Play with Units

To get more familiar with CSS Units, we are going to be using the DevTool's Style pane to make changes to our previous "css-practice-selector.html" file (with all the snippets uncommented).

1\. In a Chrome browser window, open [`css-units-selector.html`](code/src/3-adding-style/4-html-css-selector-final.html) (I renamed the file and changed the text in the header, but everything else is the same as the previous "css-selector-practice.html").
 
2\. Open the DevTools (cmd + alt +j).  Navigate to the Elements Panel and click on the `<h1>CSS Units Practice</h1>`.

Notice under the Styles pane, that the `font-size: 2em`.  This is the default font-size the browser automatically gives to any `h1` elements it sees.  We are going to change that.

![](public/assets/h1.png)

3\. In the `element.style` section just above the h1 styles, adding `font-size: 5em`.  This will override the default CSS.

![](public/assets/5em.gif)

Watch the font size change pretty dramatically.  Remember `em` is a scalable unit, so a change from 2 to 5 makes a big difference.

4\. Next, select any of the paragraph elements, and just like we did in the previous step, try adding a new font-size, and this time make it `1em`.  Nothing should change.

Why is that?  Because 1em is the _base_, and em is a scalable unit, with the base of 1em. 

So what happens if we change it to 0.2em? Try it out. 

![](public/assets/small.png)

It gets a bit tough to see 🧐.

5\. Right now, I have the div tag's width set at 50%.  I'm using the percent CSS unit, that tells the div to be set at 50% of their parent's width.  

**Parent** is a common term in CSS and HTML.  We won't cover it here, but for our purposes know that it is the element that *contains* the div.

In our case, the "parent" to the div tags is the `<body></body>` element. 

Let's change the `<body></body>` element's width to 50%, and see what happens.

![](public/assets/body.gif)

Notice, how the div tags shrunk?  Their width when from 50% of the full body to 50% of 50%, i.e., 25%.

6\.  Continue playing around, adjusting various CSS units.  For example, try adjusting the paragraphs font-size to 20pt, or 500px.

That wraps up our CSS discussion. CSS is powerful and has a lot more use cases and caveats that we did not have time to cover.  If you plan on going into Web Development, plan on spending a substantial amount of time learning CSS.  The more you learn about CSS, the more powerful of a developer you'll be.  

In addition to the topics covered in these blog posts, I recommend spending time understanding the Cascading Mechanism, the CSS Box Model, FlexBox, and for fun, CSS animations.

Next up, is JavaScript.  Like CSS, I cannot teach you JavaScript over a couple of blog posts, instead, I hope to get you familiar with what JavaScript is, what it does, and some understanding of how prevalent it is.