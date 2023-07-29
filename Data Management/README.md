# Data_Management

Progetto del corso di Data Management, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.  

Lo scopo del progetto è quello di creare un dataframe scegliendo diverse fonti per i dati (nel nostro caso, sono state usate tre fonti di dati: https://fbref.com/en/, https://www.transfermarkt.it/ e https://www.capology.com/ , e i dati sono stati importati con downloads tramite la libreria worldfootballR per i primi due siti, e tramite Web Scraping con la libreria BeautifulSoup con Python per il terzo sito), integrare i dati, pulire i dati e renderli consistenti, e caricarli in un DBMS (abbiamo scelto MongoDB) per poi poter eseguire delle queries su di essi. 

Il dataset ottenuto è il risultato di integrazione di datasets diversi relativi a 8 campionati di calcio (Serie A, Premier League, Ligue 1, Bundesliga, Liga Spagnola, Eredivisie, Liga Nos e MLS) per la stagione 2022/23, relativi a statistiche sui contratti dei calciatori, sui valori di mercato dei calciatori e sulle statistiche dei calciatori per la stagione 2022/23. 
