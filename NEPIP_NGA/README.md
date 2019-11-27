# NEPIP_NGA

Data: Nazi Era Provenance Internet Portal dataset for the NGA  

From Laurel **RE: Art Data**: “NEPIP contains items from 179 museums that have listed artworks that they consider to have gaps in the history of ownership during the Nazi era.  

The items in NEPIP_NGA were selected from one museum: The National Gallery of Art in Washington DC.
Based on the identifier ("accession number") for the item in NEPIP the provenance (ownership history) of the item has been retrieved from the NGA's public collections site.  

Thus, NEPIP_NGA should contain the provenance (ownership history) that the NGA published online for every artwork that it posted on NEPIP, over 7000 items.  

**QUESTION**: Where should rare and expensive (human) expert research resources be focused?  

**GOAL**: Use R to rank the items by the probability that there is a serious problem with the provenance.   

**Proposed Method**: (At first) use lists of "Red Flags" that have been composed by humans based on a variety of sources. Then, when that works well, see if one can use machine learning to detect patterns that the humans may have missed.  

Red Flags: There are several lists of Red Flags of different types. The first and most official one is the 1946 Office of Strategic Services Art Looting Investigation Unit Final Report which lists 1000 names of people investigators considered to have been involved in the Nazi looted art market.   

List of names in raw form: <https://www.lootedart.com/MVI3RM469661>

