---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 14 - CSS Units

### Units

The pixel unit type `px` is one we've used several times. A `px` is a **Unit** that CSS properties use when describing the size of something. Any CSS property that deals with size takes `px`. But `px` is just one of the many unit sizes CSS properties accept.

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


#### Exercise 4 of 6: Using the DevTools to play with colors and units
//ARG will modify.

To get more familiar with color values and units, we are going to be using the DevTool's Style pane to make changes to our previous Porcupine HTML document.

1\. Open the previously complete [`3-adding-style/4-html-css-selector-final.html`](code/src/3-adding-style/4-html-css-selector-final.html) in a browser window.
 
2\. Open the DevTools.  In the Elements Panel, click on the paragraph with `id=answer` to select it.

Notice under the Styles pane, that the `font-size: 16px` and the color is <span style="color:lawngreen">lawngreen</span>.  We are going to change that.

![](images/3-CSS/porcupine-font-color.png)

3\. Double-click on the font size and change it to `1em`, and then `2em`.  Watch the font size change pretty dramatically.  Remember `em` is a scalable unit, so a change from 1 to 2 makes a big difference.  Try changing it to something like `50%`, or `20pt`, and see what happens.  Play around.

![](images/3-CSS/porcupine-font-color-2.png)

4\. Next, double-click on the color lawngreen, and change it from `lawngreen` to `#0000FF`. That changes the color to <span style="color:#0000FF">blue</span>.  

But what if you wanted to make the blue somewhat transparent?  Use the RGBA color unit, and set the last value to the level of transparency you'd like.  In the following screenshot, I've changed it to transparency 0.5 or 50% of its regular color `rgba(0,0,255,0.5)`.  

![](images/3-CSS/porcupine-font-color-3.png)

5\. Now let's play with the DevTools' Color Picker.  Click once on the color in the Styles pane, and the color picker will come up.  You can slide the rulers to change colors or click inside the color palette to choose colors.  

![](images/3-CSS/porcupine-font-color-4.png)

6\. If you click on the ↕ you can select any of the color value types.  This tool is super handy and fun to play around with.  

![](images/3-CSS/porcupine-font-color-5.png)

// note much more to learn about CSS.

// Next JavaScript