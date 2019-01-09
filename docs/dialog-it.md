1# Ciao ragazzi
2# Hi Brent
1# Allora, vi confermo che lunedì è la data per la prossima release di Adunicorn.
1# Ci siamo tutti? Il reparto di sviluppo?
2# Yes
1# La rete?
2# As well
1# Fantastico. Gli Ops?
2# There we have an issue. Anna, the Ops of server SN101, is on vacation next Monday, she’ll be back the next week.
1# Ok, va bene. La possiamo sostituire con qualcunaltro?
2# I'm not sure. It was always Anna to work on that server. No one else knows the server better than her. I suggest to wait her return.
1# Va bene, ho capito. Allora, diciamo che rimandiamo il rilascio. Va bene a tutti se fissiamo per il prossimo venerdì?
2# Ok.
0# 
1# Posso sapere una cosa? Perché abbiamo questa dipendenza così forte tra le persone e i server?
2# We use templates to create servers, so they are identical. But since that moment, we do configuration by hand. We often perform some tests with Devs and we go back and forth with settings, and so on…. So, those two identical servers diverge with time. We call it “Configuration shift”. 
1# Quindi, partiamo con dei server inizialmente identici, e poi con il tempo finiamo per avere dei server in qualche modo unici...
2# Yes, unique like snowflakes. So, we really need Anna.
1# Ok, ho capito. Va bene, appuntamento al prossimo venerdì, facciamo alle 6, ok?
2# Why so early?
1# Eh, ragazzi, lo so che è una scocciatura svegliarsi presto. Però sapete meglio di me che durante i rilasci abbiamo dei downtime e interrompiamo il servizio. La mattina presto possiamo anche permettercelo, perché abbiamo un traffico abbastanza ridotto. Ma nel pomeriggio un downtime sarebbe drammatico.
2# Ok, better safe than sorry.
1# A posto, ci vediamo venerdì.
0# 
1# &nbsp;
1# <h1>Lunedì mattina</h1>
1#  
1# Ciao a tutti, buongiorno.
2# Hi Brent. Sorry, I'm very busy... I'm in the middle of the deployment.
1# Bene. Quanto durerà il downtime?
2# Few minutes still, I hope. It's all manual. I must be careful, the deployment may even fail. We ran into troubles with node SN123
1# Qual è, il server di Anna?
2# No, another one. We have 2 db nodes, and one is really slow, can’t figure out why. Can’t understand...  Damn..
1# Ok, va bene, mantenere la calma. Possiamo andare avanti con un nodo solo e magari rimuovere quanto prima la maintenance page?
2# No, no, not yet, the system is not stable. There must be a bug..
1# Un bug? Non riesci a correggerlo, Albert?
2# No, please, not in the middle of a downtime...
1# Uhm… Ok, allora valutiamo un rollback alla precedente versione, per ripristinare tutto allo situazione di ieri. Possiamo?
2# We can and we should. Of course, the rollback may fail as well. After all, it's just another deployment.
1# Diosanto. Che ti devo dire? Procedi e incrociamo le dita...
2# Ok, it worked! Now we can remove the maintenance page.
1# Benissimo. Ci vediamo tutti quanti nel pomeriggio. Voglio che facciamo un briefing e si discuta di quello che non ha funzionato, e del perché, per vedere cosa possiamo migliorare del processo.
2# Yes, nice idea. Actually I've got a proposal.
1# Sono tutto orecchie.
0# 
1# <h1>Lunedì pomeriggio</h1>
2# Hi Brent. I just met Andy, the lead developer. He told me the system was ok on his machine.
1# E allora perché non funzionava in produzione?
2# Because Andy ran the system on the Dev environment, on servers different than production
1# Gli snowflakes... Ma sei riuscito a capire quale fosse la differenza tra i due ambienti.
2# No, it's hard to say…
2# Maybe he changed something… or maybe I did, and I forgot to replicate in his machines... It's not easy, everything is manual...
1# Mi stai dicendo che è inevitabile...
2# Yes, it seems so.
1# Ok, ragazzi, ho bisogno di parlarvi di un altro argomento.
1# Il prossimo venerdì è il Black Friday. Il reparto sales ha previsto che avremo un picco di traffico 4 volte superiore agli altri venerdì.
1# Perché fai quella faccia, Albert? Ti preoccupa?
2# Yes, a bit . We will need at least 2 more db servers. Maybe 3.
1# Sì, ma non ci sono problemi, faccio immediatamente richiesta per 3 server aggiuntivi.
2# Uhm, that’s not so easy… Servers are a hard to get.
2# We have to create them, to install the operating system, to configure them…
2# We create them from scratch, copying from other snowflakes servers.
1# Quanto tempo ci vuole per un server.
2# Days... may be weeks… Then, we need to test them...
1# Ah, quindi non è solo lento, è anche costoso.
1# Ask Anna to build those 3 servers anyway.
2# Anna is really too busy. Each server consumes human time. Wanna double your platform? Double your staff...
1# Sì, capisco. Non c'è modo di scappare da questa regola.
2# Well, you could escape if...
1# Se cosa?
2# I told you I had a proposal.
0# 
1# <h1>What if?</h1>
1# Una proposta. Dai, bene, sono pronto. Sputa il rospo.
2# Ok, Brent. Let's do a game.
2# Let’s say we had Immutability and Automation. Take an immutable server.
1# Cosa intendi con Immutabilità?
2# An immutable server is a server you place in your cloud, and no one can change anymore.
1# Non mi sembra così utile...
2# It is, indeed. Suppose you obtained that server printing it out from a Master Copy.
1# In che senso stamparla partendo da una Matrice Originale.
2# Think of the Master Copy of the 1 Franc coin, the one used print other coins. You print millions indentical Franc coins from it.
2# Think of SN101, take its Master Copy, and print SN101 from it. An immutable copy of it.
1# E quale sarebbe il vantaggio.
2# Oh, we could have a lot of benefits...
0# 
2# Tell me, Brent: would you like to have 3 copies of SN101?
1# Tutti stampati a partire dalla stessa Matrice Originale?
1# Ah, aspetta, ho capito: sarebbero tutti identici, quindi.
1# Uhm.. Niente configuration shift...
2# There's even more. Think of Anna. If we could print 20 copies of SN101, what would Anna’s job be?
1# Ma certo, non avrebbe il bisogno di lavorare 20 volte su 20 copie identiche...
2# Correct! She would rather focus on the Master Copy.
2# If we all could focus on the single source of truth for a server...
1# ...ed eviterebbe di spendere del tempo prezioso a replicare la configurazione mille volte, su ogni singolo server...
2# ...we would work only once.
2# We could concentrate all the effort setting our quality standards to the highest limit.
2# Do once, at your best.
0# 
1# Ma cos'è che contiene questa Matrice Originale?
2# Everything you need to run our application. Network, configuration, the application itself…
1# Interessante. Nessuna differenza tra i server. Così, il server SN101 non sarebbe più unico nel suo genere.
2# Yes. Every configuration would be as simple as a text file, stored in the Master Copy, any System Engineer who worked on the Master Copy can manage all of its copies.
1# Aspetta, aspetta, hai detto "uno qualsiasi di loro"... Intendi che ci sarebbe meno dipendenza tra i server e i singoli Ops?
2# Yes. Also, can you understand how running identical, immutable copies is easier than running snowflakes? I mean, we could double the number of those copies  without doubling the staff...
1# Però continuo a non capire qualcosa. Com'è che può funzionare un rilascio con questi server immutabili? Voglio dire, se sono immutabili...
2# You prepare a server, you invest your time to write and test its configuration. 
2# Then you print one or more instances. And you run them.
0# 
1# Ma se sono immutabili! Dai, abbi pazienza, non può funzionare. Gratta gratta, prima o poi avrai bisogno di fare delle modifiche. Ogni due mesi rilaciamo una nuova versione di Adunicorn. Com'è che puoi rilasciare un cambiamento se non puoi cambiare i server?
2# You don’t need to change the servers! Change the Master Copy. Then print the new servers, with the new version. And run them.
1# Uhm. E i server vecchi? Cosa dovrei farne?
2# Dispose of them. It’s called Blue/Green Deployment. Never change the configuration of a server in production: rather, put new versions side by side to the old one, and gracefully move the customers from the old version to the new one.
1# Con gradualmente intenti senza downtime?
2# No downtime, if you want.
1# E nessuna maintenance page...
0# 
1# Ma il problema di oggi non è stato un problema di downtime. È stato un problema provocato da un bug che Andy non aveva rilevato sul suo ambiente.
2# You said it.
1# Cos'è che ho detto?
2# "HIS environment". Who prepared Andy's servers?
1# Non lo so, qualche Ops. Poi evitentemente Andy ha modificato qualcosa nella sua configurazione...
1# Ommamma, ho capito... Se solo Andy avesse stampato il proprio computer dalla Matrice Originale...
2# They would be identical to the productive one.
1# E immutabile! Ma non fa una piega. Quindi, fammi capire: i programmatori dovrebbero sviluppare usando delle copie perfette dei server produttivi, fin dal primo giorno...
2# Yes.
1# E come si fa se Andy dovesse aver bisogno di fare delle modifiche al server, per le proprie esigenze?
2# He can modify the Master Copy, together with Anna. So, any modification would be tracked there, and propagated to any replica copy.
1# E i rollback?
2# They are just deployment. You deploy the servers with the old versions.
2# No one changed a single line in them.
1# Intendi dire, se funzionavano nel passato, devono per forza funzionare nello stesso identico modo se vengono rimessi di nuovo in produzione, se nessuno li ha cambiati di una virgola...
1# Ok, quindi l'immutabilità è la soluzione.
0# 
2# Immutability, plus Automation.
1# Ah, è vero, mi avevi detto dell'automatzione. Spiegati meglio.
2# Automation is the ability to print servers quickly. If can automate everything. You could get a new server  very very quickly.
1# Quanto veloce?
2# Just seconds.
1# Eh, addirittura...
2# Absolutely serious. It's that quick. And very cheap too. Have a look.
2# That’s a master copy of RabbitMQ. I'm printing and running a server, ok? Get ready...
2# Done. Wanna have 3 more copies? Done.
2# Now, dispose of them. Let’s drop 2 servers.
2# Seen?
1# Impressionante. Se avessi una roba simile a disposizione il Black Friday non sarebbe un problema. Potrei fare richiesta per 3 server e averli nel giro davvero di mezz'ora.
2# Actually you could do much more. Suppose to get a little program that creates new servers when the traffic increases, and discard of them when our customers are idle..
1# Cioè, potremmo avere un numero dinamico di server, in funzione del traffico e del numero di richieste.
2# Yes. We could save money, and switch off half our infrastructure during the night. Or respond to unpredictable spikes.
0# 
1# Ma come fanno poi gli Ops a gestire una rete simile, con così tante parti in movimento?
2# They must manage cattle rather than pets.
1# Uh? Cosa intendi?
2# I mean, we treat our servers as pets. We give them names. 
1# È vero. Abbiamo SN101, c'è -- come si chiama? -- SNX10
2# And they have owners too. Take Anna, for example. She knows everything about her pet: when it's born, its health, its little secrets.. She’s even jealous, and let no one take care of SN101.
1# Lo so. Abbiamo perfino rimandato un rilascio perché Anna era in vacanza.
1# E qual è l'altro approccio alla gestione dei server?
0# 
2# Think of farmers. They easily have thousand of sheep. They don’t give them names. They manage them all together, as a cattle. They say "Let's buy 20% more sheep", or "move half the sheep from here to there". If 3 sheep dies, they replace them, it’s a number. They are all identical.
2# Ops in many companies do the same. They focus on the Enterprise network health, not on the single SN101.
1# Come in Amazon o in Google?
2# Yes, and a lot of much smaller companies too. It's not about the amount of servers: it's about where you want to put your focus. Business capabilities vs the single servers. They can treat servers as sheep, because they use immutability, so they give the servers no opportunities to get any special.
2# We could do the same. We could use special software for orchestrating our cattle of servers.
0# 
1# &nbsp;
1# <h1>Docker</h2>
1# Cos'era quella dashboard che mi hai mostrato prima? Era un prototipo?
2# It was Docker, with Kubernetes and OperShift.
1# Scusa?
2# You know, Brent, a lot of huge companies have been investing on this field, in the last years. Kubernetes is the orchestration tool written and used by Google. OpenShift is by RedHat, and is specially suited for Enterprises like us. The basic building block is Docker which makes immutability and automation possible.
1# Albert, non sono un tecnico...
2# In a server you can run dozens, or hundreds of programs.
1# Certo, questo lo so. E so anche che si devono prendere delle precauzioni perché i programmi non interferiscano l'uno con l'altro in modi non previsti.
2# Exactly! If you run the server within Docker, Docker tricks each of those programs, and let it believe it is the only one existing in the server.
1# Quindi, serve a isolare i programmi tra di loro?
2# Yes! It segregates it in sort a of cage, a container. And it allows to build and configure that cage, in a very detailed way, so that a cage resemble a server in all details, from network, to certifications, and so on. For example, we may build a cage that is identical to our SN101
1# La Matrice Originale!
2# Yes
1# Ok. Quindi, la Matrice Originale è la descrizione del server.
2# Of the server and the program running inside it!
1# Ok, di entrambi: del server e del programma. Ha senso.
1# Ma chi è responsabile della Matrice Originale, chi è che la scrive? Il Developer o l'Ops?
0# 
2# Brent, you nailed it. This is probably the most important topic. Both.
1# In che senso entrambi? Prima l'Ops e poi il Developer?
2# No, both, together, since the beginning. It must be a collaborative endeavour. Devs and Ops, together.
1# Ha niente a che vedere con questo DevOps di cui si sente parlare sempre più spesso?
2# Absolutely. Dev and Ops. Or, if you think about it: Dev, Security and Ops. The so called DevSecOps.
1# Vabbè, è fantascienza.
2# Not at all, indeed. It's a matter of fact. A lot of companies adopted Docker and DevOps already. It is just the modern school for IT companies.
2# But let me show what I did in my spare time, please.
2# Do you remember our Transaction Service?
1# Qual era? Il servizio che i nostri clienti utilizzano per leggere le informazioni sulle transazioni delle loro carte di credito?
