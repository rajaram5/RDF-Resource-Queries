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

"
library(futile.logger)
source("script/file_utils.R")
source("script/execute_sparql_queries.R")
source("script/constants.R")

BiosemanticsConceptstore.getEntrezId <- function(uniProtID) {    
  # GET entrez gene ID for the given uniProt ID.
  #
  # Args: 
  #   proteinId: UniprotID
  #
  # Returns:  
  #   DataFrame contains SPARQL query result
  queryFileName <- file.path(SPARQL.QUERIES.DIR, "get_entrez_gene_id_for_uniprot_id.sparql") 
  query <- ReadQueryFile(queryFileName)
  uniProtIDValues <- paste0("('", uniProtID, "')") 
  # Substitute the ?InputID in the SPARQL query string.
  query <- gsub("\\?InputID", uniProtIDValues, query) 
  result <- GetTable(BIOSEMANTIC.CONCEPT.ENDPOINT , query)
  return(result)  
}






