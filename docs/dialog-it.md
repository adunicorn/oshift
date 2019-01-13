1# Ciao ragazzi
2# Ciao Brent
1# Allora, vi confermo che lunedì è la data per la prossima release di Adunicorn.
1# Ci siamo tutti? Il reparto di sviluppo?
2# Sì.
1# La rete?
2# Certo
1# Fantastico. Gli Ops?
2# Ehm, abbiamo un problema: l'amministratore del server SN101, Anna, è in vacanza lunedì, ma dovrebbe tornare un paio di giorni dopo.
1# Ok, va bene. La possiamo sostituire con qualcun’altro?
2# Temo di no; si è sempre occupata Anna di quel server. Nessuno lo conosce meglio di lei. Meglio attendere che torni.
1# Va bene, ho capito. Allora, diciamo che rimandiamo il rilascio. Va bene a tutti se fissiamo per il prossimo venerdì?
2# Ok.
0# 
1# Posso sapere una cosa? Perché abbiamo questa dipendenza così forte tra le persone e i server?
2# Per creare i server usiamo dei template, così che siano identici. Ma da quel momento in poi, facciamo tutto a mano. Capita spesso di fare dei test con gli sviluppatori: facciamo delle prove, poi torniamo indietro... E così, i due server nel tempo differiscono. Questo effetto viene detto "Configuration shift”, deriva della configurazione.
1# Quindi, partiamo con dei server inizialmente identici e poi con il tempo finiamo per avere dei server in qualche modo unici...
2# Sì, unici, come fiocchi di neve. Pe questo abbiamo bisogno di Anna.
1# Ok, ho capito. Va bene, appuntamento al prossimo venerdì, facciamo alle 6, ok?
2# Uh, e perché così presto?
1# Eh, ragazzi, lo so che è una scocciatura svegliarsi presto. Però sapete meglio di me che durante i rilasci abbiamo dei downtime e interrompiamo il servizio. La mattina presto possiamo anche permettercelo, perché abbiamo un traffico abbastanza ridotto. Ma nel pomeriggio un’interruzione del servizio sarebbe drammatica.
2# Ok, meglio restare sul sicuro.
1# A posto, ci vediamo venerdì.
0# 
1# &nbsp;
1# <h1>Venerdì mattina</h1>
1#  
1# Ciao a tutti, buongiorno.
2# Ciao Brent. Scusami, sono molto preso. Siamo nel mezzo del rilascio.
1# Bene. Quanto durerà il downtime?
2# Un paio di minuti, mi auguro. È un'attività manuale, quindi richiede molta attenzione, altrimenti potrebbe fallire. Abbiamo riscontrato problemi con il server SN123
1# Qual è, il server di Anna?
2# No, no, un altro: abbiamo un DB con due nodi e uno è lento. Non capisco perché... Davvero... Maledizione...
1# Ok, va bene, mantenere la calma. Possiamo andare avanti con un nodo solo e magari rimuovere quanto prima la maintenance page?
2# No, no! Il sistema non è stabile! Ci deve essere un baco.
1# Un bug? Non riesci a correggerlo, Albert?
2# No, ti prego, non durante un rilascio!
1# Uhm… Ok, allora valutiamo un rollback alla precedente versione per ripristinare tutto allo situazione di ieri. Possiamo?
2# Si potrebbe... Forse è meglio. Ovviamente, anche il rollback potrebbe fallire. Dopotutto, è un ulteriore rilascio.
1# Diosanto. Che ti devo dire? Procedi e incrociamo le dita...
2# Ottimo, ha funzionato! Ora possiamo rimuovere la maintenance page.
1# Benissimo. Ci vediamo tutti quanti nel pomeriggio. Voglio che facciamo un briefing e che si discuta di quello che non ha funzionato, e del perché, per vedere cosa possiamo migliorare del processo.
2# È un'ottima idea. E ho una proposta interessante per te.
1# Sono tutto orecchie.
0# 
1# <h1>Lunedì pomeriggio</h1>
2# Ciao Brent. Ho appena incontrato Andy, il technical leader. Mi ha detto che tutto funzionava regolarmente sul suo laptop.
1# E allora perché non funzionava in produzione?
2# Perché il team ha fatto le verifiche sul server di sviluppo, che però è diverso da quello produttivo.
1# I fiocchi di neve… Ma sei riuscito a capire quale fosse la differenza tra i due ambienti?
2# Difficile a dirsi... 
2# Magari Andy ha fatto qualche modifica… O magari l'ho fatta io e ho dimenticato di replicarla sui suoi server... è complicato, facciamo tutto a mano.
1# Mi stai dicendo che è inevitabile...
2# Già, così sembra
1# Ok, ragazzi, ho bisogno di parlarvi di un altro argomento.
1# Il prossimo venerdì è il Black Friday. Il reparto sales ha previsto che avremo un picco di traffico 4 volte superiore agli altri venerdì.
1# Perché fai quella faccia, Albert? Ti preoccupa?
2# Sì, un pochino. Avremo bisogno di due server DB in più, forse anche tre.
1# Sì, ma non ci sono problemi, faccio immediatamente richiesta per 3 server aggiuntivi.
2# Eeeeh, non è cosi' semplice! Un server richiede tempo: va creato, installato, configurato. 
2# E li creiamo ogni volta a zero, copiando da altri server, altri fiocchi di neve.
1# Quanto tempo ci vuole per un server?
2# Giorni, o anche settimane. Dobbiamo anche testarli
1# Ah, quindi non è solo lento, è anche costoso.
1# Potresti chiedere ad Anna di preparane tre? È la persona più indicata per riprodurre delle copie del proprio server…
2# Anna è molto impegnata. Ogni server richiede tempo. Hai bisogno del doppio dei server? Devi raddoppiare il team...
1# Sì, capisco. Non c'è modo di sfuggire a questa regola.
2# Beh, potremmo, se...
1# Se cosa?
2# Ti ho detto che avevo una proposta, no?
0# 
1# <h1>What if?</h1>
1# Una proposta. Dai, bene, sono pronto. Sputa il rospo.
2# Ok, Brent. Ti propongo un gioco
2# Assumiamo di avere Immutabilità ed Automazione. Prendi un server immutabile, per cominciare
1# Cosa intendi con Immutabile?
2# Un server immutabile è un server che rilasci nel tuo cloud, ma nessuno può modificare.
1# Non mi sembra così utile...
2# Lo è, al contrario! Immagina che tu abbia stampato questo server a partire da una matrice
1# In che senso stamparla partendo da una matrice?
2# Sì, una matrice, la Master Copy, come quella che si usa per le monete, per esempio un franco. Puoi stampare milioni di monete con una matrice.
2# Ora pensa al server SN101 e alla sua matrice: potresti creare il server dalla matrice. Una copia identica, immutabile
1# E quale sarebbe il vantaggio?
2# Oh, ce ne sarebbero molti!
0# 
2# Dimmi, vorresti avere tre copie dell'SN101?
1# Tutti stampati a partire dalla stessa Matrice Originale?
1# Ah, aspetta, ho capito: sarebbero tutti identici, quindi niente configuration shift...
2# E c'è di più! Pensa ad Anna: se potessimo stampare 20 copie dell'SN101, quale sarebbe il suo compito?
1# Ma certo, non avrebbe il bisogno di lavorare 20 volte su 20 copie identiche...
2# Giusto! Piuttosto, potrebbe concentrarsi sulla matrice.
2# Se tutti ci focalizzassimo sull'unica sorgente di verità dei server...
1# …sì sì, ho capito: si eviterebbe di spendere del tempo prezioso a replicare la configurazione mille volte, su ogni singolo server...
2# ...lavoreremmo solo una volta
2# Potremmo concentrare tutti gli sforzi per ottenere standard di qualità molto alti.
2# Fallo solo una volta, al meglio
0# 
1# Ma cos'è che contiene questa Matrice, questa Master Copy?
2# Tutto ciò che è necessario per eseguire un'applicazione: la rete, la configurazione, l'applicazione stessa...
1# Interessante. Nessuna differenza tra i server. Così, il server SN101 non sarebbe più unico nel suo genere, nella flotta dei suoi cloni.
2# Già. Ogni configurazione verrebbe salvata in un semplice file di testo, la Matrice. Uno qualsiasi degli Ops che abbia lavorato alla Matrice potrebbe gestirne tutte le copie.
1# Aspetta, aspetta, hai detto "uno qualsiasi degli Ops“… Intendi che ci sarebbe meno dipendenza tra i server e i singoli Ops?
2# Sì. Inoltre capisci come avere tante copie identiche immutabili sia più semplice che avere tanti fiocchi di neve? Insomma, per raddoppiare il numero di server non avresti più bisogno di raddoppiare il team
1# Però continuo a non capire qualcosa. Come può funzionare un rilascio con questi server immutabili? Voglio dire, se sono immutabili...
2# Devi preparare il server, investire il tuo tempo per scrivere e verificare la sua configurazione.
2# A quel punto, ne stampi le copie e le metti in esercizio.
0# 
1# Ma se sono immutabili! Dai, abbi pazienza, non può funzionare. Gratta gratta, prima o poi avrai bisogno di fare delle modifiche. Ogni due mesi rilanciamo una nuova versione di Adunicorn. Come puoi rilasciare un cambiamento se non puoi cambiare i server?
2# Ma non hai bisogno di cambiare i server! Ne modifichi la matrice. Quindi, ne stampi le nuove copie, con la nuova versione. E le rilasci.
1# Uhm. E i server vecchi? Cosa dovrei farne?
2# Li distruggi. È una tecnica chiamata Blue/Green deployment. Mai cambiare un server in produzione; piuttosto, lascia che la vecchia e nuova versione coesistano, temporaneamente. A quel punto, sposti gradualmente gli utenti dai vecchi ai nuovi server.
1# Con gradualmente intenti senza disservizi, senza downtime?
2# Senza downtime, se vuoi.
1# E nessuna maintenance page...
0# 
1# Ma il problema di oggi non è stato un problema di downtime. È stato un problema provocato da un bug che Andy non aveva rilevato sul suo ambiente.
2# L'hai detto!
1# Cos'è che ho detto?
2# "Il suo server". Chi l'ha preparato?
1# Non lo so, qualche Ops. Poi evidentemente Andy ha modificato qualcosa nella sua configurazione...
1# Ommamma, ho capito... Se solo Andy avesse stampato il proprio computer dalla Matrice Originale...
2# Sarebbero identici a quelli produttivi.
1# E immutabili! Ma non fa una piega. Quindi, fammi capire: i programmatori dovrebbero sviluppare usando delle copie perfette dei server produttivi, fin dal primo giorno...
2# Esatto!
1# E come si fa se Andy dovesse aver bisogno di fare delle modifiche al server, per le proprie esigenze?
2# Può mettere mano alla matrice, insieme ad Anna. In questo modo, tutte le modifiche verrebbero tracciate e propagate a tutte le copie.
1# E i rollback?
2# Ma sono dei semplici rilasci, dove a essere rilasciati sono semplicemente server della versione precedente. 
2# Dopotutto, nessuna l’ha modificata…
1# Intendi dire, se funzionavano nel passato, devono per forza funzionare nello stesso identico modo se rimessi di nuovo in produzione, se nessuno li ha cambiati di una virgola...
1# Ok, quindi l'immutabilità è la soluzione.
0# 
2# L’Immutabilità, sì, ma anche l’Automazione.
1# Ah, è vero, mi avevi detto dell'automazione. Spiegati meglio.
2# Automazione è la capacità di stampare server rapidamente. Se puoi automatizzare ogni passaggio, potresti creare nuovi server molto velocemente.
1# Quanto veloce?
2# Secondi.
1# Eh, addirittura...
2# Sul serio, è così veloce. E anche economico. 
2# Guarda, questa è la matrice di RabbitMQ. Stampo e lancio un server. Pronto?
2# Fatto. Hai bisogno di altre 3 copie? Fatto.
2# E ora distruggiamone due copie.
2# Visto?
1# Impressionante. Se avessi una roba simile a disposizione il Black Friday non sarebbe un problema. Potrei fare richiesta per 3 server e averli davvero nel giro di mezz'ora.
2# In verità, potesti fare molto di più. Supponi di avere un software che crei nuovi server quando il traffico aumenta e li distrugga quando non ci sono utenti...
1# Cioè, potremmo avere un numero dinamico di server, in funzione del traffico e del numero di richieste.
2# Sì. Potremmo risparmiare denaro, spegnendo la metà dell'infrastruttura durante la notte; oppure, potremmo reagire al meglio a picchi d'uso imprevisti.
0# 
1# Ma come fanno poi gli Ops a gestire una rete simile, con così tante parti in movimento?
2# È come gestire un gregge, anziché singoli animali domestici.
1# Uh? Cosa intendi?
2# Intendo dire che noi adesso gestiamo i server come fossero dei gattini. Diamo loro un nome...
1# È vero. Abbiamo SN101, c'è -- come si chiama? -- SNX10
2# ... e hanno un proprietario. Anna, per esempio, sa tutto del suo gattino: quando è nato, lo stato di salute, ogni piccolo dettaglio. E ne è addirittura gelosa e non lascia avvicinare nessuno!
1# Lo so. Abbiamo perfino rimandato un rilascio perché Anna era in vacanza.
1# E qual è l'altro approccio alla gestione dei server?
0# 
2# Pensa agli allevatori: possono avere migliaia di pecore. Non danno loro nomi, ma le trattano come un unico insieme, un gregge. Dicono "compriamone il 20% in più", oppure "spostiamone la metà da qui a là”. Se 3 pecore muoiono, verranno rimpiazzate: sono solo un numero, perché sono tutte identiche ai loro occhi.
2# Gli Ops in molte compagnie si comportano similmente. Si concentrano sullo salute dell'intera rete aziendale, non del single SN101.
1# Come in Amazon o in Google?
2# Sì, ma anche aziende più piccole. Non è una questione di numeri, di server: dipende su cosa vuoi concentrarti. Business capabilities oppure singoli server. Queste aziende gestiscono i server come greggi; in quanto immutabili, non è possibile che diventino unici.
2# Potremmo farlo anche noi, usando un software per orchestrare i nostri greggi di server.
0# 
1# &nbsp;
1# <h1>Docker</h2>
1# Cos'era quella dashboard che mi hai mostrato prima? Era un prototipo?
2# Era Docker, con Kubernetes e OperShift.
1# Scusa?
2# Sai, Brent, molte grandi compagnie hanno fatto notevoli investimenti in questo ambito negli ultimi anni. Kubernetes è un tool di orchestrazione scritto ed usato da Google. OpenShift è prodotto da RedHat ed è dedicato alle imprese come noi. Il building block è Docker, che rende possibili immutabilità ed automazione.
1# Ma non ci capisco niente, Albert, non sono un tecnico...
2# È più semplice di quel che sembri. In un server puoi lanciare dozzine, anche centinaia di programmi
1# Certo, questo lo so. E so anche che si devono prendere delle precauzioni perché i programmi non interferiscano l'uno con l'altro in modi non previsti.
2# Esattamente! Se lanci un programma all'interno di Docker, il programma crederà di essere l'unico in esecuzione nel server.
1# Quindi, Docker serve a isolare i programmi tra di loro?
2# Esatto. Segrega i programmi in una sorta di gabbia, il container. E permette di costruire questa gabbia in modo molto preciso, così che assomigli a un server in ogni dettaglio: rete, certificati, tutto. Potremmo costruire una gabbia identica al nostro SN101.
1# La Matrice, la Master Copy!
2# Giusto
1# Ok. Quindi, la Matrice è la descrizione del server.
2# Del server e del programma che ci gira dentro!
1# Ok, di entrambi: del server e del programma. Ha senso.
1# Ma chi è responsabile della Matrice, chi è che la scrive? Il Developer o l'Ops?
0# 
2# Brent, hai centrato la questione. è questo il punto più importante: entrambi.
1# In che senso entrambi? Prima l'Ops e poi il Developer?
2# No, entrambi, insieme, fin dall'inizio. Deve essere una collaborazione: Dev ed Ops insieme.
1# Ha niente a che vedere con questo DevOps di cui si sente parlare sempre più spesso?
2# Assolutamente sì. Dev ed Ops. O, se ci pensi, Dev, Security ed Ops. Il cosiddetto DevSecOps.
1# Vabbè, è fantascienza.
2# Per nulla, invece. È un dato di fatto. Molte società hanno già adottato Docker e DevOps. È semplicemente la scuola moderna per l'IT.
2# Ma lascia che ti mostri quanto ho preparato nel tempo libero.
2# Ricordi il Transaction Service?
1# Qual era? Il servizio che i nostri clienti utilizzano per leggere le informazioni sulle transazioni delle loro carte di credito?
