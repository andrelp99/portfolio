library(worldfootballR)


# funzioni statistiche giocatori da FBREF

stat_giocatori_campionato <- function(nazione, stagione, tier){
  # prendo i link delle squadre del campionato di interesse
  campionato_nome <- fb_league_urls(country = nazione, gender = "M", season_end_year = stagione, tier = tier)
  campionato <- fb_teams_urls(league_url = campionato_nome)
  nome_campionato <- gsub("-", " ", substr(campionato_nome, tail(unlist(gregexpr('/', campionato_nome))+1, n=1), tail(unlist(gregexpr('Stats', campionato_nome))-2, n=1)))

  # escludo le squadre in eccesso per il campionato olandese (spesso più di 18 squadre riportate, ovvero quelle dei playoff)
  
  if (nome_campionato == "Eredivisie"){
    campionato <- campionato[c(1:18)]
  }
  
  # escludo l'eventuale squadra aggiunta dei playoff (sempre l'ultima, se sono dispari come in Francia)
  if (length(campionato)%%2 !=0){
    campionato <- head(campionato, -1)
  }
  
  # creo la lista delle statistiche di interesse
  stats_list <- c("standard", "shooting", "passing", "passing_types", "gca", "defense", "possession", 
                  "playing_time", "misc")
    for (k in stats_list) assign(paste0(k,"_stat"),list())
  
  # trovo le tabelle delle statistiche
  for (j in campionato){
    squadra <- gsub("-", " ", substr(j, tail(unlist(gregexpr('/', j)), n=1)+1, tail(unlist(gregexpr('-', j))-1, n=1)))
    standard_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "standard", time_pause = 2)
    shooting_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "shooting", time_pause = 2)
    passing_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "passing", time_pause = 2)
    passing_types_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "passing_types", time_pause = 2)
    gca_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "gca", time_pause = 2)
    defense_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "defense", time_pause = 2)
    possession_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "possession", time_pause = 2)
    playing_time_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "playing_time", time_pause = 2)
    misc_stat[[squadra]] <- fb_team_player_stats(j, stat_type = "misc", time_pause = 2)
    }
  
  # creo la lista completa di tutti i dataframes delle singole squadre
  campionato_definitivo <- list()
  
  # unisco tutti i dati trovati
  for (team in 1:length(standard_stat)){
    campionato_def <- merge(x = standard_stat[[team]], y = shooting_stat[[team]], by = "PlayerURL", all.x = TRUE, check.names = FALSE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = passing_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = misc_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = passing_types_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = gca_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = defense_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = possession_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    campionato_def <- merge(x = campionato_def, y = playing_time_stat[[team]], by = "PlayerURL", all.x = TRUE)
    duplicated_columns <- duplicated(as.list(campionato_def))
    campionato_def = campionato_def[!duplicated_columns]
    
    # modifico i nomi di colonna che si sono modificati con i vari merge
    for (col in 1:ncol(campionato_def)){
      colnames(campionato_def)[col] <-  gsub(".x", "", colnames(campionato_def)[col], fixed = TRUE)
      colnames(campionato_def)[col] <-  gsub(".y", "", colnames(campionato_def)[col], fixed = TRUE)
    }
    
    # aggiungo le statistiche della squadra alla lista finale di dataframes
    campionato_definitivo[[standard_stat[[team]]$Squad[1]]] <- campionato_def
  }
  
  # restituisco la lista di dataframes delle singole squadre 
  return(campionato_definitivo)
}


premier_2023 <- stat_giocatori_campionato(nazione = "ENG", stagione = 2023, tier = "1st")
seriea_2023 <- stat_giocatori_campionato(nazione = "ITA", stagione = 2023, tier = "1st")
laliga_2023 <- stat_giocatori_campionato(nazione = "ESP", stagione = 2023, tier = "1st")
bundesliga_2023 <- stat_giocatori_campionato(nazione = "GER", stagione = 2023, tier = "1st")
ligue1_2023 <- stat_giocatori_campionato(nazione = "FRA", stagione = 2023, tier = "1st")
liganos_2023 <- stat_giocatori_campionato(nazione = "POR", stagione = 2023, tier = "1st")
eredivise_2023 <- stat_giocatori_campionato(nazione = "NED", stagione = 2023, tier = "1st") # problema: da togliere 3 squadre, non 1
mls_2023 <- stat_giocatori_campionato(nazione = "USA", stagione = 2023, tier = "1st")




# pulizia colonne doppie non duplicated

for (squadra in 1:length(seriea_2023)){
  duplicated_columns <- duplicated(as.list(colnames(seriea_2023[[squadra]])))
  seriea_2023[[squadra]] <- seriea_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(premier_2023)){
  duplicated_columns <- duplicated(as.list(colnames(premier_2023[[squadra]])))
  premier_2023[[squadra]] <- premier_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(mls_2023)){
  duplicated_columns <- duplicated(as.list(colnames(mls_2023[[squadra]])))
  mls_2023[[squadra]] <- mls_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(ligue1_2023)){
  duplicated_columns <- duplicated(as.list(colnames(ligue1_2023[[squadra]])))
  ligue1_2023[[squadra]] <- ligue1_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(liganos_2023)){
  duplicated_columns <- duplicated(as.list(colnames(liganos_2023[[squadra]])))
  liganos_2023[[squadra]] <- liganos_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(laliga_2023)){
  duplicated_columns <- duplicated(as.list(colnames(laliga_2023[[squadra]])))
  laliga_2023[[squadra]] <- laliga_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(eredivise_2023)){
  duplicated_columns <- duplicated(as.list(colnames(eredivise_2023[[squadra]])))
  eredivise_2023[[squadra]] <- eredivise_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(championship_2023)){
  duplicated_columns <- duplicated(as.list(colnames(championship_2023[[squadra]])))
  championship_2023[[squadra]] <- championship_2023[[squadra]][!duplicated_columns]
}

for (squadra in 1:length(bundesliga_2023)){
  duplicated_columns <- duplicated(as.list(colnames(bundesliga_2023[[squadra]])))
  bundesliga_2023[[squadra]] <- bundesliga_2023[[squadra]][!duplicated_columns]
}




# modifica nomi delle squadre MLS

nomi_squadre_mls <- c("FC Cincinnati", "Nashville SC", "New England Revolution", "Columbus Crew", 
                      "Philadelphia Union", "Atlanta United", "Orlando City", "CF Montréal",
                      "D.C. United","Charlotte FC", "New York City FC", "New York Red Bulls", 
                      "Chicago Fire", "Toronto FC", "Inter Miami", "St. Louis City", "Los Angeles FC", 
                      "Seattle Sounders FC", "Real Salt Lake", "FC Dallas", "San Jose Earthquakes", 
                      "Houston Dynamo", "Austin FC", "Vancouver Whitecaps FC", "Sporting KC", 
                      "Minnesota United", "Portland Timbers", "LA Galaxy")


names(mls_2023) <- nomi_squadre_mls

for (el in 1:length(mls_2023)){
  mls_2023[[el]]['Squad'] = nomi_squadre_mls[el]
}











# estrazione dati di Transfermarkt

# per valutazioni di mercato stagione 2022/23
evaluations_2022 <- tm_player_market_values(country_name = c("England", "Spain", "France", "Italy", "Germany", "Netherlands", "Portugal", "USA"),
                                        start_year = 2022)


# per mappa per unire dati di FBREF e Transfermarkt
mapped_players <- player_dictionary_mapping()



























# salvataggio dati

setwd("C:/Users/andre/OneDrive/Documenti/unimib/magistrale/primo anno/Data Management Visualization/data man/prove prog/")

# salvataggio dati Transfermarkt
write.csv(mapped_players[1:3], file = "mappa_tm_fbref.csv")
write.csv(evaluations_2022, file = "market_values.csv")



# salvataggio dati FBREF

# funzione per creare i csv delle squadre dei differenti campionati

csv_convert_campionato <- function(campionato){
  folder_path <- paste0(deparse(substitute(campionato)),"/")
  if (file.exists(folder_path)) {
    print("The folder already exists")
  } else {
    dir.create(path = folder_path, showWarnings = TRUE, recursive = FALSE)
  }
  for (elemento in 1:length(campionato)){
    x <- as.data.frame(campionato[[elemento]])
    path <- paste0(folder_path,toString(campionato[[elemento]]$Squad[1]),".csv")
    write.csv(x, file = path)
  }
}

csv_convert_campionato(seriea_2023)
csv_convert_campionato(premier_2023)
csv_convert_campionato(bundesliga_2023)
csv_convert_campionato(laliga_2023)
csv_convert_campionato(ligue1_2023)
csv_convert_campionato(liganos_2023)
csv_convert_campionato(eredivise_2023)
csv_convert_campionato(mls_2023)


