# water-news
Extract water related news sources.

## Objective
Extract the what, when and where from the GDELT Global Knowledge Graph database. 

The objective is to create a global heatmap of water related news. 



Steps:

1. Filter by date and topic / theme.
1. Extract the location.
1. Filter out locations that are too unspecific. 
  Minimum match level is state/province or below.
1. Aggregate data up to either state of hexagonal grid.
1. Normalize and rank.
1. Refine themes.


Metadata for GKG 2.0 of GDELT: http://data.gdeltproject.org/documentation/GDELT-Global_Knowledge_Graph_Codebook-V2.1.pdf

