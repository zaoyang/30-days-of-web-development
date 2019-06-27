// reducer:setFilename:draw-scatter.js
// reducer:setTopicLogo:../images/d3js-icon.svg
// reducer:setTitle:The 6 Steps in Every D3 Chart
// reducer:setProductBranding:Fullstack D3
// reducer:setWebviewUrl:http://localhost:8080
// reducer:setCaption:Step 1. First, we load our data...<br/><img src="/Users/nmurray/projects/fs/books/reducers/d3/images/d3js-icon.svg" style="position: absolute; bottom: 10px; right: 10px">
async function drawScatter() {
  // reducer:beginTyping
  // Step 1.
  const dataset = await d3.json(
    './my_weather_data.json'
  )
  // reducer:screenshot
  show(dataset[0])

  // reducer:setCaption:and we define functions to read the values from each datapoint
  const xAccessor = d => d.dewPoint
  const yAccessor = d => d.humidity
  // reducer:screenshot
  show({ dewPoint: xAccessor(dataset[0]) })

  // reducer:setCaption:Step 2. Create our chart settings, such as width and height
  // Step 2.
  let cfg = {
    width: window.innerWidth * 0.95,
    height: window.innerHeight * 0.95,
    // reducer:setCaption:and define sizes for margins.
    margin: {
      top: 10,
      right: 10,
      bottom: 50,
      left: 50,
    },
    // reducer:screenshot
  }

  // reducer:setCaption: We calculate "bounded" width and height...
  cfg.boundedWidth =
    cfg.width -
    cfg.margin.left -
    // reducer:screenshot
    cfg.margin.right
  // reducer:setCaption: ...which is the inner chart area (no axes)
  cfg.boundedHeight =
    cfg.height -
    cfg.margin.top -
    cfg.margin.bottom

  // reducer:setCaption:Step 3. Create the DOM Elements
  // Step 3.
  const wrapper = d3
    .select('#wrapper')
    .html('') // clear
    // reducer:screenshot
    .append('svg')
    // reducer:setCaption:Here, we create the <tt>svg</tt> element
    .attr('width', cfg.width)
    .attr('height', cfg.height)

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

  // reducer:setCaption:Step 4. Create scales
  // Step 4.
  const xScale = d3
    .scaleLinear()
    .domain(d3.extent(dataset, xAccessor))
    .range([0, cfg.boundedWidth])
    // reducer:screenshot
    // reducer:setCaption:Our scales convert the <em>data</em> values into <em>pixel</em> values
    .nice()

  const yScale = d3
    .scaleLinear()
    // reducer:setCaption:We create a scale for both X & Y axis
    .domain(d3.extent(dataset, yAccessor))
    // reducer:screenshot
    .range([cfg.boundedHeight, 0])
    // reducer:setCaption:Now for the fun part...
    .nice()

  // reducer:setCaption:Step 5. Draw our data
  // Step 5.
  const dots = bounds
    .selectAll('circle')
    .data(dataset)
    // reducer:screenshot
    .enter()
    // reducer:setCaption:Using our data, we draw a circle for each point
    .append('circle')
    .attr('cx', d => xScale(xAccessor(d)))
    .attr('cy', d => yScale(yAccessor(d)))
    .attr('r', 2)
    // reducer:screenshot
    .attr('fill', d => 'cornflowerblue')

  // reducer:setCaption:Step 6. Draw peripherals such as axes and labels
  // Step 6.
  const xAxisGenerator = d3
    .axisBottom()
    .scale(xScale)
    // reducer:screenshot
    .ticks(5)

  // reducer:setCaption:This "axis generator" draws the line and ticks for the X-axis.
  const xAxis = bounds
    .append('g')
    .call(xAxisGenerator)
    .style(
      'transform',
      `translateY(${cfg.boundedHeight}px)`
      // reducer:screenshot
    )

  // reducer:setCaption:labels are <tt>text</tt> elements with coordinates
  const xAxisLabel = xAxis
    .append('text')
    .attr('x', cfg.boundedWidth / 2)
    .attr('y', cfg.margin.bottom - 12)
    // reducer:screenshot
    .html('dew point (&deg;F)')

  // reducer:setCaption:now we repeat for the y-axis
  const yAxisGenerator = d3
    .axisLeft()
    .scale(yScale)
    .ticks(5)

  const yAxis = bounds
    .append('g')
    // reducer:screenshot
    .call(yAxisGenerator)

  const yAxisLabel = yAxis
    // reducer:setCaption:adding labels for the humidity on the left
    .append('text')
    .attr('x', -cfg.boundedHeight / 2)
    .attr('y', -cfg.margin.left + 14)
    .style('transform', 'rotate(-90deg)')
    .style('text-anchor', 'middle')
    // reducer:setCaption:and there we have it! A D3 scatterplot in 6 steps
    // reducer:screenshot
    .text('relative humidity')
  // reducer:endTyping
  // reducer:screenshot
}
drawScatter()
