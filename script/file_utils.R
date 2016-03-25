# <Manuscript>
# Copyright (C) 2016 Biosemantics Group, Leiden University Medical Center
#  Leiden, The Netherlands
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

"
@author Rajaram Kaliyaperumal

@version 0.1
@since 25-03-2016

<p>
Rscript to perform file manipulations. 
</p>

"

library(futile.logger)

ReadQueryFile <- function(fileName){
  # This function read the content of a given file.
  #
  # Args: 
  #   fileName: Name of the file with full path
  #
  # Returns:  
  #   Content of a file in as a string. 
  
  #flog.info("Reading content of the file %s", fileName, name='fileUtlis.r')
  
  file <- file(paste(fileName, sep = ""))
  fileContent <- readLines(file)
  #fileContent <- paste(fileContent, sep = " ")
  fileContent <- paste(fileContent, sep = "\n", collapse = "")
  close(file)  
  return (fileContent)
}

