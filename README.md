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


### Filter by topic / Themes

get a list of all possible themes:



Location Type. (integer) This field specifies the geographic resolution of the match type
and holds one of the following values: 1=COUNTRY (match was at the country level),
2=USSTATE (match was to a US state), 3=USCITY (match was to a US city or landmark),
4=WORLDCITY (match was to a city or landmark outside the US), 5=WORLDSTATE
(match was to an Administrative Division 1 outside the US – roughly equivalent to a US
state). This can be used to filter counts by geographic specificity, for example,
extracting only those counts with a landmark-level geographic resolution for mapping.
Note that matches with codes 1 (COUNTRY), 2 (USSTATE), and 5 (WORLDSTATE) will still
provide a latitude/longitude pair, which will be the centroid of that country or state, but
the FeatureID field below will contain its textual country or ADM1 code instead of a
numeric featureid.

Valid values are 2,3,4,5

