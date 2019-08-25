# August-2016-to-May-2017----START-Consortium----INSPIRE-Project
R scripts and example CSVs from my time as an intern and research assistant for the INSPIRE Project at the START Consortium in College Park, MD

Summary: The START INSPIRE Project aims to predict whether political instability will result from an election. The work documented in this 
repository attempted to measure the polarization, or sentiment intensity, of tweets surrounding various elections in Sub-saharan Africa. The INSPIRE team manually 
coded 1000 tweets related to six elections in Sub-Saharan Africa. Coders rated tweets as either negative (-2 or -1), neutral (0), or positive
(1 or 2). We calculated Sentiment Intensity by summing the number of extremely negative and extremely positive tweets (-2 and 2) and dividing 
it by the total number of relevant tweets. Finally, we compared the Sentiment Intensity of each elections tweets before and after election day 
to determine if polarization increased or decreased after the election. A more detailed explanation of the project can be found by looking through
the PowerPoint found on the repository's homepage.

Installation:
  1. Download the entire "Fall 2016 analysis R" folder found in this repository.
  2. Save all files found in "Fall 2016 analysis R" to same local folder.
  3. Open all ".R" files in R studio.
  3. Set working directory to folder containing all files from "Fall 2016 analysis R"
  4. Run "CollapseScale.R".
  5. Run "SentimentIRRJohn.R". 
  6. Run "SentimentIntensity.R" This code calculates the sentiment intensity for each election overall as well as before and after the election.
  7. Run "RDDSentimentIntensity.R" This code runs a regression discontinuity analysis using election day as a cutoff to determine if there 
     was a significant change in Sentiment Intensity after the various elections.
     
Credits:
  The START Consortium at the University of Maryland
  Dr. Erin C McGrath
  Dr. Cody Buntain
  Dylan Cattie
 
 License:
                     GNU GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

                          
