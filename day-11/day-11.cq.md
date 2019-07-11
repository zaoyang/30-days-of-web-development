---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 11 - How to write CSS

We have worked through several CSS examples, but I have yet to show you how to write CSS. 

CSS syntax is relatively straightforward, and you may have even picked up on the basics through some of the previous examples. The three key components of writing CSS are **Selector**, **Property**, and **Value**.

![](images/3-CSS/selector-property-value.png)

### Selector
A **Selector** is what points to the HTML element. In the previous screenshot, `p` is the selector. This selector points to *all* paragraph elements on the page.  Thus, `p { color: blue; }` is telling us that all paragraph elements should be the color <span style="color:blue">blue</span>. 

Selectors are an important part of CSS Syntax.  We will revisit them in more detail later.  

### Property
A **Property** tells the browser what style you want to add. Is it *color*, *font-style*, or *alignment*?

There are a lot of CSS properties.  As you work with CSS, you'll naturally memorize some of them, but there will always be some you have to refer back to documentation about. 

A great place to search for information about CSS properties is the [Mozilla CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference) (a.k.a. MDN web docs).  

### Value
A **Value** tells the browser by _how much_, _what color_, or the _allowed value_ you want to apply to that property. In the examples we've seen so far, this would include things like `right`, `orange`, and `100px`.

Here's an example of a value and property from when we changed the padding around our porcupine video.

![](images/3-CSS/value.png)

// Exercise on HTML file or DevTools, see how added inline or external.

Specificity next.