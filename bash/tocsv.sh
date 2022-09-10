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


curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team1&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team1.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team2&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team2.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team3&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team3.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team4&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team4.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team5&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team5.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team6&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team6.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team7&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team7.csv

curl "https://proclubs.ea.com/api/nhl/clubs/matches?clubIds=$team8&platform=xbox-series-xs&matchType=club_private" -A "Gecko/20100101" | jq -r ' def empty_strings: reduce range(length) as $i ([]; . + [""]); .[] | [.matchId, .timestamp] as [$matchId, $timestamp] | (.players | [to_entries[] | .key as $id1 | .value | to_entries[] | [$id1, .key, .value.glbrksavepct, .value.glbrksaves, .value.glbrkshots, .value.gldsaves, .value.glga, .value.glgaa, .value.glpensavepct, .value.glpensaves, .value.glpenshots, .value.glpkclearzone, .value.glpokechecks, .value.glsavepct, .value.glsaves, .value.glshots, .value.glsoperiods, .value.opponentClubId, .value.position, .value.posSorted, .value.ratingDefense, .value.ratingOffense, .value.ratingTeamplay, .value.skassists, .value.skbs, .value.skdeflections, .value.skfol, .value.skfopct, .value.skfow, .value.skgiveaways, .value.skgoals, .value.skgwg, .value.skhits, .value.skinterceptions, .value.skpassattempts, .value.skpasses, .value.skpasspct, .value.skpenaltiesdrawn, .value.skpim, .value.skpkclearzone, .value.skplusmin, .value.skpossession, .value.skppg, .value.sksaucerpasses, .value.skshg, .value.skshotattempts, .value.skshotonnetpct, .value.skshotpct, .value.skshots, .value.sktakeaways, .value.toiseconds, .value.playername]]) as $players | (.clubs | [to_entries[] | [.key, .value.passa, .value.passc, .value.ppg, .value.ppo, .value.shots, .value.toa, .value.details.name, .value.details.clubId]]) as $clubs | range([$players, $clubs] | map(length) | max) | [$matchId, $timestamp] + ($clubs[.]   // ($clubs[] | empty_strings)) + ($players[.] //
($players[] | empty_strings)) | @csv ' >> /home/joe/NZHLSTATS/Teams/$team8.csv

