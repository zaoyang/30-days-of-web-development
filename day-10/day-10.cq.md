---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 10 - CSS and HTML together

## How do you add CSS to a web page?

There are three basic ways of adding CSS to your web page.  So far we've only explored one of them.  We've been adding CSS directly onto the HTML document, inside a `<style></style> ` element.  

![](images/3-CSS/internal-style.png)

This approach is called **Internal Style**, but it's just one of the three ways you can add CSS to an HTML document.

We will cover each of these in more detail, but in summary, the three ways to add style to an HTML document are as follows:

1. External stylesheet
2. Internal stylesheet
3. Inline style

### 1. External stylesheet

If you add CSS via an External Stylesheet you are telling the browser to find another file and use that for style.  You do this by adding a `<link>` element with an `href` attribute pointing to the CSS file. 

The browser looks for external stylesheets inside the `<head></head>` element.  If it sees a `<link>` element with reference to a CSS file, it knows to import it and use it.  

In the following example, the `<link>` element is telling the browser: use the file called "external-stylesheet.css" to apply style to this document.

![](images/3-CSS/external-stylesheet.png)

#### Exercise 5 of 6: Make an External CSS file.

Our previous Porcupine HTML file has been using an internal stylesheet. In this exercise, we're going to change that to an external stylesheet.

1\. Open [`3-adding-style/4-html-css-selector-final.html`](code/src/3-adding-style/4-html-css-selector-final.html) in your text editor.

2\. Copy and remove (`command + x`) all the style between the style tag. 

![](images/3-CSS/copy-and-remove.png)

3\. Now that we have all of our style removed from our HTML document, we are going to make a new file called `external-stylesheet.css`.

Open a new file in your text editor and paste all the previously copied style into it.  **Save** the file and name it `external-stylesheet.css`.  

Notice the `.css` file ending.  That tells the editor and browser that this is a CSS file. 

![](images/3-CSS/steps.png)

If you'd like to see an example file, you can here: [`3-adding-style/external-stylesheet.css`](code/src/3-adding-style/external-stylesheet.css)

4\. Go back to the HTML file, and inside the `<head></head>` element add a `<link>` element with the following information:

![](images/3-CSS/now-linking.png)

In the previous screenshot, the pink box with the multiple *X*s over it is the style you removed and have now replaced with the `<link>` element below it.

If you'd like to copy-paste the link tag, you can find it on the [`3-adding-style/external-stylesheet-final.html`](code/src/3-adding-style/5-external-stylesheet-final.html)

5\. **Save** the updated HTML file.  

Go back to your finder, and open the file in a browser window.  As long as you've opened the HTML file in the same folder as the `external-stylesheet.css` file, you will see the CSS applied even though we've removed it from the HTML file.  

I> To quickly summarize, you removed the previous style on the HTML page and moved it to its own CSS file.  You then linked to that new CSS file in the HTML document.  Thus, successfully adding style to a web page via an External Stylesheet.

### 2. Internal stylesheet

Another way to add CSS to an HTML file is within the `<style></style>` element. This is an approach we are familiar with as we've been using this for all our earlier examples.  

The following is a refresher from our earlier `4-html-css-selector-final` example.  

![](images/3-CSS/internal-style.png)

Whether you are adding CSS via an **External stylesheet** or **Internal style** the syntax is the same.  You wrap the CSS in curly braces `{}`, i.e., a **declaration block**. And inside the declaration block, you list the **Property** followed by a colon `:` and then the **Value**.  Each property : value statement ends with a semicolon.

![](images/3-CSS/declaration-block.png)

### 3. Inline style

The third way to add CSS to HTML is via **Inline style**. Inline style adds CSS directly inside any HTML element[^anyhtmlelement]. To do this, you use the `style` attribute on the HTML element you want to add style to.

![](images/3-CSS/inline-css.png)

There are some small syntax differences between adding Inline style vs. the other methods.  Unlike External or Internal Stylesheets, Inline styles are surrounded in quotations after the `style` attribute, and there is no declaration block. See the example below.

![](images/3-CSS/html-css-inline-syntax.png)

// Maybe small exercise with HTML file example
// Cut this down.