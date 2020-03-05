function plot_line(pointF, pointS, var)
  plot([pointF(1) pointS(1)], [pointF(2) pointS(2)], var{:});
endfunction