---
coverImageBackgroundPosition: "50% 87%;"
---

# D3 Example

> Here's a D3 Example

Scatterplot

<iframe src='./src/6-steps/index.html'
        height="250"
        scrolling="no"
         >
</iframe>

Above we have a scatterplot testing okay.

```javascript
const bounds = wrapper
  // reducer:setCaption:... and a <tt>g</tt> (group) to hold our chart
  .append('g')
  .style(
    'transform',
    `translate(${cfg.margin.left}px, ${
    cfg.margin.top
    }px)`
    // reducer:screenshot
  )
// ...
const yScale = d3
  .scaleLinear()
  // reducer:setCaption:We create a scale for both X & Y axis
  .domain(d3.extent(dataset, yAccessor))
  // reducer:screenshot
  .range([cfg.boundedHeight, 0])
  // reducer:setCaption:Now for the fun part...
  .nice()
```
