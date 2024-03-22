# projects_portfolio

Alcuni progetti sviluppati all'interno del mio percorso universitario: 

### - Big Data in Health Care

Progetto del corso di Big Data in Health Care, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.

Il progetto si propone di analizzare l’incidenza di seconda recidiva nei soggetti con resezione chirurgica del Carcinoma epatocellulare (HCC) che hanno già avuto una prima recidiva.

L’HCC è un tumore maligno del fegato e la resezione chirurgica è spesso utilizzata come opzione di trattamento. Tuttavia, anche dopo la rimozione del tumore, la recidiva è comune. Questo studio si concentrerà su pazienti che hanno già avuto una recidiva.

L’analisi dei dati sarà effettuata utilizzando metodi non parametrici e analisi univariate, come il modello Cox. L’obiettivo finale del progetto è quello di sviluppare un modello predittivo che possa aiutare a identificare i pazienti a rischio di seconda recidiva per poter adottare misure preventive appropriate.


### - Data_Management
Progetto del corso di Data Management, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.

Lo scopo del progetto è quello di creare un dataframe scegliendo diverse fonti per i dati (nel nostro caso, sono state usate tre fonti di dati: https://fbref.com/en/, https://www.transfermarkt.it/ e https://www.capology.com/ , e i dati sono stati importati con downloads tramite la libreria worldfootballR per i primi due siti, e tramite Web Scraping con la libreria BeautifulSoup con Python per il terzo sito), integrare i dati, pulire i dati e renderli consistenti, e caricarli in un DBMS (abbiamo scelto MongoDB) per poi poter eseguire delle queries su di essi.

Il dataset ottenuto è il risultato di integrazione di datasets diversi relativi a 8 campionati di calcio (Serie A, Premier League, Ligue 1, Bundesliga, Liga Spagnola, Eredivisie, Liga Nos e MLS) per la stagione 2022/23, relativi a statistiche sui contratti dei calciatori, sui valori di mercato dei calciatori e sulle statistiche dei calciatori per la stagione 2022/23.

### - Data_Science_Lab

Progetto del corso di Data Science Lab, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.  

Lo scopo del progetto è quello di esplorare il dataset fornito, relativo ai ricavi e numero di scontrini di sei ristoranti (situati in Lombardia ed Emilia Romagna) in un periodo compreso tra gennaio 2018 e aprile 2022, in modo da ottenere insights interessanti. 

Ad una prima fase di import, pulizia ed elaborazione delle informazioni ottenute a partire dai due dataset inizialmente forniti, segue una fase di integrazione dei dati con dataset contenenti informazioni inerenti al fenomeno in studio, ed una fase di esplorazione dei dati.

La seconda parte del progetto riguarda la creazione di modelli e serie storiche che permettano di rappresentare in modo fedele l’andamento dei guadagni dei sei ristoranti di interesse, col fine di individuare eventuali pattern stagionali, trend significativi ed insight che possano aiutare nella stima delle perdite dovute all’avvento del Covid 19 e ai conseguenti periodi di lockdown e limitazioni.

### - Data Visualization
Progetto del corso di Data Visualization, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.

La visualizzazione interattiva, creata con Tableau Public, è disponibile al seguente link: https://public.tableau.com/views/DataViz2_16731134978590/Storia1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

In generale è stato utilizzato Tableau Public per la creazione delle infografiche utilizzate all'interno del progetto.

Il dataset è il risultato di integrazione di datasets diversi presenti sul sito https://fbref.com/en/, in particolare avendo considerato i dati generali e quelli sul possesso palla relativi ai top 5 campionati europei (Serie A, Premier League, Ligue 1, Bundesliga e Liga Spagnola) per le stagioni 2017/18, 2018/19, 2019/20, 2020/21 e 2021/22.

### - Data Mining
Progetto del corso di Data Mining, anno accademico 2020/21, nel corso di Laurea triennale in Statistica e Gestione delle Informazioni (SGI), presso l'Università degli Studi di Milano - Bicocca.

Lo scopo dello studio consiste nella messa a punto di un classificatore che sia capace di predire la valutazione degli utenti sulla base delle caratteristiche di un’applicazione.


### - Foundations of Computer Science
Progetto del corso di Foundations of Computer Science, anno accademico 2021/22.

Consegna
You have to work on the files:

Books
Book ratings
Users
Goodbooks books
Goodbooks ratings
Notes:
It is mandatory to use GitHub for developing the project.
The project must be a jupyter notebook.
There is no restriction on the libraries that can be used, nor on the Python version.
To read those files, you need to use the encoding = 'latin-1' option.
All questions on the project must be asked in a public channel on Zulip, otherwise no answer will be given.
Richieste
Normalize the location field of Users dataset, splitting into city, region, country.
For each book in the Books dataset, compute its average rating.
For each book in the GoodBooks dataset, compute its average rating.
Merge together all rows sharing the same book title, author and publisher. We will call the resulting datset merged books. The books that have not been merged together will not appear in merged books.
For each book in merged books compute its average rating. (The average is computed considering all books in books that have been merged).
For each book in merged books compute the minimum and maximum of the average ratings over all corresponding books in the books dataset. Hence for each book in merged books we will have exactly two values (a minimum and a maximum)
For each book in goodbooks, compute the list of its authors. Assuming that the number of reviews with a text (column work_text_reviews_count) is split equally among all authors, find for each authors the total number of reviews with a text. We will call this quantity the shared number of reviews with a text.
For each year of publication, determine the author that has the largest value of the shared number of reviews with a text.
Assuming that there are no errors in the ISBN fields, find the books in both datasets, and compute the difference of average rating according to the ratings and the goodratings datasets
Split the users dataset according to the age. One dataset contains the users with unknown age, one with age 0-14, one with age 15-24, one with age 25-34, and so on.
Find the books that appear only in the goodbooks datasets.
Assuming that each pair (author, title) identifies a book, for each book find the number of times it appears in the books dataset. Which books appear the most times?
Find the author with the highest average rating according to the goodbooks datasets.

### - Laboratorio R per la Biostatistica
Progetto del corso di Laboratorio R per la Biostatistica, anno accademico 2021/22, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.

Cleaning del dataset clinico iniziale, applicazione di tecniche di Machine Learning e analisi descrittiva delle variabili d'interesse.

### - Machine Learning
Progetto del corso di Machine Learning, anno accademico 2021/22, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.

Creazione di un workflow KNIME relativo ad un progetto di Machine Learning svolto su un dataset di interesse.

### - Modelli Statistici
Progetto svolto tramite RMarkdown durante l'esame di Modelli Statistici, anno accademico 2019/20, corso di Laurea triennale in Statistica e Gestione delle Informazioni (SGI), presso l'Università degli Studi di Milano - Bicocca.

Consegna
Occorre consegnare un elaborato in cui si riporta il numero dell'esercizio ed il punto corrispondente e di seguito si illustrano i risultati con i commenti richiesti per ogni punto.

Il file res.Rdata contiene i dati relativi al costo di un singolo pasto sostenuto presso alcuni ristoranti di una certa città. Si intende valutare il costo in funzione del punteggio assegnato in base alla qualità del cibo (X1), all'eleganza del locale (X2), alla qualità del servizio (X3) e all'ubicazione del ristorante se in città o in periferia (X4, con 0 per la codifica della città).

Si riportino e si commentino i dati in base al contesto applicativo attraverso le statistiche descrittive. Si riporti e si commenti il grafico a dispersione del costo in funzione della qualità del cibo, evidenziando nel grafico il luogo di ubicazione. Si commenti la figura.

Si determini la quota d'inflazione della varianza per le variabili quantitative. Si descriva di che cosa si tratta e si commenti il valore.

Si stimi un modello di regressione lineare multipla con tutte le variabili esplicative. Si illustri l'ipotesi nulla e l'ipotesi alternativa del test effettuato sul parametro riferito alla variabile ubicazione del locale e si commenti il risultato della regola decisionale.

Si stimi il modello escludendo la variabile riferita all'ubicazione del locale. Si riportino e si commentino con riferimento al contesto applicativo i risultati forniti dal summary del modello. Si elenchino le proprietà degli stimatori dei coefficienti di regressione.

Si disegnino i residui in funzione della variabile esplicativa X2 e si riporti il grafico quantile-quantile dei residui studentizzati. Si commentino i due grafici.

Si descriva in che modo si costruiscono gli intervalli congiunti per coppie di coefficienti di regressione. Si disegni la curva di livello riferita alla distribuzione congiunta dei parametri delle variabili eleganza del locale e qualità del servizio. Si aggiungano al grafico gli estremi degli intervalli di confidenza per i singoli parametri, si commenti la figura.

Si determini un intervallo di confidenza per il valore medio previsto del costo quando si considerano i seguenti valori delle variabili esplicative: X1 = 23, X2 = 19, X3 = 27. Si commenti il risultato.

Si descriva il criterio d'informazione proposto da Akaike delineando come questo viene impiegato per la selezione delle variabili esplicative del modello di regressione lineare multipla.

### - Social Media Analytics

Progetto del corso di Social Media Analytics, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca. 

Il progetto è mirato all’implementazione di una serie di sentiment analysis, di topic modeling e di community detection, per svelare i temi principali contenuti all'interno dei post del subreddit r/ACMilan, i membri principali e il sentiment dei posts.

Le fasi iniziali riguardavano la step di pre-elaborazione del testo (normalizzazione, stopwords removal, tokenizzazione, lemmatizzazione), analisi di alcuni aspetti dei dati ottenuti, una fase di topic modeling (con creazione della wordcloud), una fase di sentiment analysis (con tre approcci, AFINN Lexicon Base Approach, The Opinion Lexicon e Dictionary Based emotion detection) ed una fase di community detection, con la creazione del grafo relativo ai membri del subreddit e il calcolo di una serie di metriche.

### - Streaming Data Management and Time Series Analysis

Progetto del corso di Streaming Data Management and Time Series Analysis, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca. 

Il progetto è mirato all’implementazione di una serie di algoritmi col fine di prevedere valori di una serie storica: si tratta di una serie in cui sono raccolte le rilevazioni di monossido di carbonio (CO), in un periodo compreso tra il 01/01/2017 alle ore 00:00:00, e il 30/12/2017 alle ore 23:50:00: tuttavia il dataset a nostra disposizione comprende i dati fino al 30/11/2017, dunque escludendo l’ultimo mese col fine di prevederne i valori.

Per questo scopo sono stati considerati algoritmi di tre categorie differenti, ARIMA, UCM e machine learning, in modo da individuare i modelli dalle migliori performance predittive, considerando il Mean Absolute Error (MAE), che indica l’errore assoluto medio, come la metrica da considerare.

### - Tesi di laurea triennale

Tesi di laurea triennale dal titolo "Automated analysis and visualization techniques of data generated with flow cytometry platforms".

La creazione, lo sviluppo e la diffusione del citofluorimetro e delle tecniche di citometria a flusso sono nati dalla necessità di affrontare problemi complessi legati ad una raccolta sempre più rapida, e dalla necessità di poter analizzare in maniera sempre più efficiente una grande quantità di dati relativi a diverse branche della biologia: dall'analisi delle cellule del sangue allo studio del ciclo cellulare, dalla ricerca sui fenomeni di apoptosi agli studi clinici sul cancro sia a scopo diagnostico che prognostico.

Durante l'esperienza come stagista presso l'Istituto Nazionale per la Ricerca sul Cancro IRCCS, mi sono confrontato con alcuni dei progressi resi possibili dalle tecniche di citometria a flusso, sia per l'esplorazione dei dati che per scopi di analisi. Insieme al mio tutor, il Dott. Luca Lalli, e sotto la supervisione del Dott. Luigi Mariani, ho affrontato problemi biomedici utilizzando approcci statistici, non solo con applicazioni informatiche che utilizzano il software R, ma anche attraverso il lavoro di ricerca su articoli scientifici e collaborazioni con il personale statistico e medico.

### - Tesi di laurea magistrale

Tesi di laurea magistrale dal titolo "Analisi di dati clinici relativi allo screening neonatale esteso e progettazione di metodologie di big data analysis e machine learning con Python per la previsione delle malattie metaboliche nella popolazione pediatrica lombarda".

Il progetto Buzzi, nato all’interno del contesto dell’ospedale Buzzi, e dunque dell’ASST Fatebenefratelli-Sacco, si pone come obiettivo principale di analizzare uno dei più ampi e significativi database in Europa relativi allo screening neonatale esteso (un test, obbligatorio a partire dagli anni 90’ su tutto il territorio nazionale italiano, che permette di individuare preventivamente patologie metaboliche e particolari condizioni cliniche nei neonati).

Il lavoro punta ad automatizzare la strutturazione ed elaborazione del dataset relativo a dati clinici e demografici di tutti i neonati, sani o con delle variazioni nelle analisi biochimiche considerate, nati in Regione Lombardia a partire da Giugno 2012 fino ad arrivare ad Aprile 2022, all’interno di un contesto fortemente human-centric e ad alta eterogeneità informativa.

L’obiettivo è di identificare, progettare, realizzare e valutare un set esteso di metodologie sinergiche o complementari di big data analysis e machine learning per l’analisi dei dati, col fine della modellazione predittiva in ambito clinico. L’analisi dei dati raccolti attraverso questo screening può essere utilizzata per individuare eventuali correlazioni, patterns o signatures all’interno dei dati raccolti, e prevedere la comparsa di malattie metaboliche nella popolazione pediatrica lombarda.

Lo sviluppo di questo progetto, a partire dalle basi teoriche, passando per lo sviluppo di algoritmi fino ad arrivare alla fase di ricerca nella letteratura scientifica di progetti corrispondenti, è stato svolto all’interno di un percorso di stage curricolare presso il MUDI Lab dell’Università degli studi di Milano – Bicocca: in questo contesto ho avuto modo di acquisire esperienza nell’analisi di big data relativi all’ambito medico e clinico, grazie alla guida dei miei tutor, il Prof. Federico Cabitza e il Dott. Luca Marconi, e al supporto degli altri membri del MUDI Lab. Nei mesi di attività e sviluppo del lavoro sono state approfondite (dal punto di vista sia teorico che pratico) tecniche di analisi dei dati e algoritmi di machine Learning, col fine di indagare eventuali patterns presenti all’interno dei dati relativi alla popolazione pediatrica lombarda.

Nel concreto, tramite codice Python, è stato possibile procedere con l’importazione dei dati, una fase di pulizia degli stessi, una fase di data exploration (con l’utilizzo di numerosi grafici, statistiche descrittive, metodi di inferenza, analisi di correlazione e analisi dei pazienti stratificati per ottenere insights su variabili di particolare interesse all’interno del dataset), una fase di riduzione di dimensionalità (dove sono state applicate diverse metodologie, tra cui UMAP, PCA e t-SNE), una fase di cluster analysis (su dati con o senza applicazione di metodi di riduzione di dimensionalità, e tramite l’utilizzo di tecniche quali il clustering gerarchico agglomerativo, il BIRCH, il DBSCAN e il K-means), ed un’analisi approfondita dei risultati ottenuti con le tecniche citate.

### - Text Mining and Search

Progetto del corso di Text Mining and Search, anno accademico 2022/23, nel corso di Laurea Magistrale in Data Science, presso l'Università degli Studi di Milano - Bicocca.

Il progetto è mirato all’implementazione di una serie di algoritmi di topic modeling e text classification, per svelare i temi principali contenuti all'interno le recensioni, categorizzandoli in gruppi distinti.

Le fasi iniziali riguardavano la step di pre-elaborazione del testo (normalizzazione, stopwords removal, tokenizzazione, lemmatizzazione)... LDA è stato scelto per la modellazione, mentre due rappresentazioni testuali (TF-IDF e Doc2Vec) sono stati valutati per il compito di classificazione.
