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
This rscript contains constants. 
</p>

"
# rscript root dir
RSCRIPT.DIR <- getwd()
# sparql queries dir
SPARQL.QUERIES.DIR <- file.path(RSCRIPT.DIR, "sparql_queries")
# biosemantics concepts sparql endpoint url
BIOSEMANTIC.CONCEPT.ENDPOINT <- "http://136.243.4.200:8890/sparql"