getDefaultPlots <- function() {
  c("diamonds", "mtcars", "rock", "iris", "esoph")
}

# plotTypes in inner lists are treated as allowed to plot together in plotTypeOpts()
getDefinedPlotInputs <- function() {
  list(
    list(scatter=c('x', 'y', 'color', 'treatColorAsFactor', 'shape', 'size', 'smooth', 
                   'jitter', 'alpha', 'sizeMag'),
         line=c('x', 'y', 'color', 'alpha'),
         path=c('x', 'y', 'color', 'alpha'),
         density2d=c('x', 'y'),
         bin2d=c('x', 'y', 'alpha', 'fill', 'nBins'), # position
         hex=c('x', 'y', 'alpha','color',  'fill', 'size', 'nBins')),
    list(box=c('x', 'y', 'fill', 'alpha'),
         violin=c('x', 'y', 'fill', 'alpha')),
    list(histogram=c('x', 'fill', 'alpha', 'position', 'nBins'),
         freqpoly=c('x', 'color', 'nBins')),
    bar=c('x','y', 'fill', 'alpha', 'position'),
    density=c('x', 'fill', 'alpha', 'densBlackLine'),
    pairs=c('columns', 'color', 'fill',
            'pairsUpCont', 'pairsUpCombo', 'pairsUpDiscr',
            'pairsDiagCont', 'pairsDiagDiscr',
            'pairsLowCont', 'pairsLowCombo', 'pairsLowDiscr'))
}

getFileDefault <- function() {
  list(width=10, height=10, DPI=100, widthMax=50, heightMax=50, DPIMax=500)
}
