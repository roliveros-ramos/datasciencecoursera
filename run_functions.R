
getData = function(dat) {
  
  path = file.path("UCI HAR Dataset", dat)
  
  
  subfile = sprintf("subject_%s.txt", dat)
  varfile = sprintf("X_%s.txt", dat)
  actfile = sprintf("Y_%s.txt", dat)
  
  subject  = read.table(file.path(path, subfile))
  var      = read.table(file.path(path, varfile))
  activity = read.table(file.path(path, actfile))
  
  names(var) = paste0("var", seq_len(ncol(var)))
  
  out = data.frame(subject=subject[,1], activity=activity[,1],
                   var)
  
  return(out)
}