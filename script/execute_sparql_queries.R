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
@since 21-03-2016

<p>
Rscript to query SPARQL endpoint. 
</p>
"

library(futile.logger)
library(SPARQL)
source("script/constants.R")

GetTable <- function(endpoint, query){
  flog.info("Querying SPARQL query '%s'", query, name = 'execute_sparql_queries.R')
  options <- "output=csv"
  # Execute SPARQL query
  table <- SPARQL(url = endpoint, query = query, extra = options)$results   
  return(table)
}
