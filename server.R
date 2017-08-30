library(shiny);
###https://rx2131.shinyapps.io/Assignment4/
shinyServer(
  function(input, output){
    
    output$Plot1 = renderPlot({
      x = input$var1;
      y = input$var2;
      

      switch(x,
             "mpg" = { dataX = mtcars$mpg; xlabel = "MPG"; },
             "cyl" = { dataX = mtcars$cyl; xlabel = "CYLINDER"; },
             "disp" = { dataX = mtcars$disp; xlabel = "DISPLACEMENT"; },
             "hp" = { dataX = mtcars$hp; xlabel = "HP"; },
             "drat" = { dataX = mtcars$drat; xlabel = "DRAFT"; },
             "wt" = { dataX = mtcars$wt; xlabel = "WT"; },
             "qsec" = { dataX = mtcars$qsec; xlabel = "QSEC"; },
             "vs" = { dataX = mtcars$vs; xlabel = "VS"; },
             "am" = { dataX = mtcars$am; xlabel = "AM"; },
             "gear" = { dataX = mtcars$gear; xlabel = "GEAR"; },
             "carb" = { dataX = mtcars$carb; xlabel = "CARB"; }
      );
      
      switch(y,
             "cyl" = { dataY = mtcars$cyl; ylabel = "CYLINDER"; },
             "mpg" = { dataY = mtcars$mpg; ylabel = "MPG"; },
             "disp" = { dataY = mtcars$disp; ylabel = "DISPLACEMENT"; },
             "hp" = { dataY = mtcars$hp; ylabel = "HP"; },
             "drat" = { dataY = mtcars$drat; ylabel = "DRAFT"; },
             "wt" = { dataY = mtcars$wt; ylabel = "WT"; },
             "qsec" = { dataY = mtcars$qsec; ylabel = "QSEC"; },
             "vs" = { dataY = mtcars$vs; ylabel = "VS"; },
             "am" = { dataY = mtcars$am; ylabel = "AM"; },
             "gear" = { dataY = mtcars$gear; ylabel = "GEAR"; },
             "carb" = { dataY = mtcars$carb; ylabel = "CARB"; }
      );
      
      main = paste("Plot between", xlabel);
      main = paste(main, " & ");
      main = paste(main, ylabel);
      plot(dataX, dataY, main = main, xlab = xlabel, ylab = ylabel);

    })
  }
)