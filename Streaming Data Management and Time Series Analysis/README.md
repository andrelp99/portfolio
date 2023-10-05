# Streaming Data Management and Time Series Analysis

Progetto del corso di Streaming Data Management and Time Series Analysis, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca. 

Il progetto è mirato all’implementazione di una serie di algoritmi col fine di prevedere valori di una serie storica: si tratta di una serie in cui sono raccolte le rilevazioni di monossido di carbonio (CO), in un periodo compreso tra il 01/01/2017 alle ore 00:00:00, e il 30/12/2017 alle ore 23:50:00: tuttavia il dataset a nostra disposizione comprende i dati fino al 30/11/2017, dunque escludendo l’ultimo mese col fine di prevederne i valori.

Per questo scopo sono stati considerati algoritmi di tre categorie differenti, ARIMA, UCM e machine learning, in modo da individuare i modelli dalle migliori performance predittive, considerando il Mean Absolute Error (MAE), che indica l’errore assoluto medio, come la metrica da considerare.