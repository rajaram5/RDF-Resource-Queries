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

" 

setwd("/home/rajaram/work/RDF-Resource-Queries/")
source("script/biosemantics_conceptstore_service.R")

uniProtId <- c("Q14409")
entrezGeneId <- BiosemanticsConceptstore.getEntrezId(uniProtId) 
print(entrezGeneId)
