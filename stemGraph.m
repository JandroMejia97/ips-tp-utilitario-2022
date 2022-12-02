function stemGraph(n, y, chartTitle = 'Discrete signal', nLabel = 'n', yLabel = 'y[n]', specline = 'g')
  # Create a stem plot
  stem(n, y, specline)
  
  # Set the title
  title(chartTitle)

  # Set the x-axis label
  xlabel(nLabel)

  # Set the y-axis label
  ylabel(yLabel)
end