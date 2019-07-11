---
coverImageBackgroundPosition: "50% 87%;"
---

# Day 13 - CSS color values

### Color Values

Some CSS properties require a color value. For these CSS properties, we've just been writing out color names, such as <span style="color:deeppink">deeppink</span>. But naming a color is not the only color value CSS properties can accept. Below are some of the more common color values.

|    Color Value    |                                                                                                           Description                                                                                                           |
| :---------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|       blue        |                                                              **Color Name**. This is what we have been using in our examples. The browser predefines these.                                                              |
|     #0000FF;      | **Hexadecimal Colors**. These are specified with #RRGGBB, RR = red, GG = green, and BB = blue. All values are between 00 and FF.  #0000FF is blue because the last two digits are set to the highest value, FF. |
|   rgb(0,0,255)    |      **RGB**. Similar to hex, the values read rgb(red, green, blue). The color's intensity can vary by an integer between 0-255. rgb(0,0,255) is blue because the third value - blue - is set to the highest number.      |
| rgba(0,0,255,0.5) |                                   **RGBA**. Exactly like RGB but with an added alpha[^alpha] value that specifies the opacity. rgba(0,0,255,0.5) would be blue set at opacity 50%.                                   |

|       color: value       |                    Example                    |
| :----------------------: | :-------------------------------------------: |
|       color: blue        |       <p style="color:blue">Howdy!</p>        |
|      color: #0000FF      |      <p style="color:#0000ff">Howdy!</p>      |
|   color: rgb(0,0,255)    |   <p style="color:rgb(0,0,255)">Howdy!</p>    |
| color: rgba(0,0,255,0.5) | <p style="color:rgba(0,0,255,0.5)">Howdy!</p> |


// Modify
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


// next units
