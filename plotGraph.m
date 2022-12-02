function plotGraph(t, y, chartTitle = 'Signal', tLabel = 't', yLabel = 'y(t)', specline = 'r')
  # Create a stem plot
  plot(t, y, specline)
  
  # Set the title
  title(chartTitle)

  # Set the x-axis label
  xlabel(tLabel)

  # Set the y-axis label
  ylabel(yLabel)
end