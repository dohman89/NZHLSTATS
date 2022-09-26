# EA stat scrape, and convert to CSV.
Create your directory set up(copy mine, or create your own. I would recommend atleast changing the folders inside of the Teams directory to reflect each team you will be using)

# Edit bash scripts 
clubid #'s in the bash script to match the clubs you are wishing to get stats from 
     (curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=111655&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101")
                                                               This number
Club id # is found in the clubs url on ea's website.
Edit the output of the bash script's to the directories you would like
      (>> /home/joe/NZHLSTATS/Teams/79718.csv) edit to appropriate directories following this ">>".
      Should be 3 per team, two in tocsv.sh, and one in APINZHL.sh
Run the Run.sh 
