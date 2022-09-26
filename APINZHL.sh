#!/bin/bash

#change the number inside the single qoutes to the clubid found by going to https://www.ea.com/games/nhl/nhl-22/pro-clubs/rankings searching for the club, and going to its page. number is located ub the URL afte ?clubid=.
team1='101458'
team2='145078'
team3='149878'
team4='150265'
team5='150730'
team6='152212'
team7='155815'
team8='79718'


curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team1&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team1.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team2&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team2.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team3&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team3.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team4&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team4.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team5&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team5.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team6&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team6.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team7&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team7.json

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team8&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" >> /home/joe/NZHLSTATS/STATSJSON/$team8.json

