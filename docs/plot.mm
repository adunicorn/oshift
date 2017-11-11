<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1507211492372" ID="ID_1554200275" MODIFIED="1507278089113" TEXT="Container Smart Day">
<node CREATED="1510128899685" FOLDED="true" ID="ID_349814545" MODIFIED="1510151590344" POSITION="right" TEXT="Prima idea">
<node CREATED="1507211506197" FOLDED="true" ID="ID_1250106451" MODIFIED="1507278521338">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Presentation and overall goal
    </p>
  </body>
</html></richcontent>
<node CREATED="1507211613091" FOLDED="true" ID="ID_584411252" MODIFIED="1507278517867" TEXT="What we wish to demonstrate with the demo">
<node CREATED="1507211626400" ID="ID_1981292099" MODIFIED="1507214060879" TEXT="We want to show how containers technology may be an interesting topic to investigate on."/>
<node CREATED="1507214061720" FOLDED="true" ID="ID_334865038" MODIFIED="1507278442039" TEXT="We will use a typical use case for our reality.">
<node CREATED="1507211626406" FOLDED="true" ID="ID_480493702" MODIFIED="1507278432092" TEXT="Explain what the application does">
<node CREATED="1507211626407" ID="ID_60412904" MODIFIED="1507212296721" TEXT="The application is a simulator"/>
<node CREATED="1507212297765" ID="ID_1323440152" MODIFIED="1507212299089" TEXT="explain what the frames&apos; animations and colors mean."/>
<node CREATED="1507212303941" ID="ID_1168344644" MODIFIED="1507214083030" TEXT="Show a live example, so that the audience gets used to the meaning of what&apos;s shown."/>
</node>
<node CREATED="1507214193671" ID="ID_951399319" MODIFIED="1507214228289" TEXT="Show how this is comparable to our business (for example, the Issuing Service)"/>
</node>
<node CREATED="1507214120466" FOLDED="true" ID="ID_1402319181" MODIFIED="1507278454411" TEXT="Anticipate that we will show how this application reacts to">
<node CREATED="1507214138858" ID="ID_1849518414" MODIFIED="1507214158803" TEXT="deployments of new versions"/>
<node CREATED="1507214159368" ID="ID_92024849" MODIFIED="1507214168980" TEXT="intense traffic"/>
<node CREATED="1507214169553" ID="ID_1652251237" MODIFIED="1507214178343" TEXT="hardware or network failures"/>
</node>
<node CREATED="1507211626408" FOLDED="true" ID="ID_1788251864" MODIFIED="1507278481795" TEXT="Explain we are using 3 ordinary -- and very old -- PCs, so the whole demo is a scaled simulation. ">
<node CREATED="1507211715457" ID="ID_1558033400" MODIFIED="1507212355166" TEXT="All effects will be scaled as well and made more visible by the slowness of systems at hand."/>
<node CREATED="1507211725104" ID="ID_1494671474" MODIFIED="1507212390188" TEXT="In the real world, we would have tens of thousands users, much more data, and a more powerful instrumentations; consequences in the real world would be faster, bigger and on a much broader scale."/>
</node>
<node CREATED="1507214254172" FOLDED="true" ID="ID_1419568034" MODIFIED="1507278516157" TEXT="We want to compare 2 different architectural approaches">
<node CREATED="1507214268654" FOLDED="true" ID="ID_983443700" MODIFIED="1507278501588" TEXT="Monolithic approach">
<node CREATED="1507214443103" ID="ID_1753174058" MODIFIED="1507214547071" TEXT="That&apos;s the approach we have always used. It has been successfully supporting our business  until the request for high scalability and real time processing arose."/>
</node>
<node CREATED="1507214275909" FOLDED="true" ID="ID_982224589" MODIFIED="1507278515795" TEXT="Containerized Microservices">
<node CREATED="1507214293979" ID="ID_440661349" MODIFIED="1507214439387" TEXT="It&apos;s the topic of the Smart Day: by using a container technology stack (Docker, Kubernetes by Google and OpenShift by RedHat) we want to show how certain constraints can be overcome, and which advantages and opportunities we could benefit from."/>
</node>
</node>
</node>
</node>
<node CREATED="1507211512039" FOLDED="true" ID="ID_1003824162" MODIFIED="1510129064745" TEXT="Monolithic solution">
<node CREATED="1507212435657" FOLDED="true" ID="ID_449898415" MODIFIED="1507278546981" TEXT="Presentation">
<node CREATED="1507211743990" FOLDED="true" ID="ID_336064635" MODIFIED="1507278531002" TEXT="Show a simplified diagram with the 3 components">
<node CREATED="1507214564602" ID="ID_1543484406" MODIFIED="1507214590326" TEXT="a frontend application (what&apos;s visible on the screen)"/>
<node CREATED="1507214572666" ID="ID_563152973" MODIFIED="1507214595269" TEXT="a back end web service"/>
<node CREATED="1507214574156" ID="ID_1558608643" MODIFIED="1507214575966" TEXT="a database"/>
</node>
<node CREATED="1507214609924" FOLDED="true" ID="ID_1125321292" MODIFIED="1507278546639" TEXT="Show how the application runs">
<node CREATED="1507214618478" ID="ID_463987732" MODIFIED="1507214643413" TEXT="Explain that the 3 servers has 3 different roles: each of them host one of the 3 components"/>
<node CREATED="1507214645785" ID="ID_1352821474" MODIFIED="1507214680625" TEXT="Show how the animations demonstrates a bunch of users are happily served by the system"/>
</node>
</node>
<node CREATED="1507212443905" FOLDED="true" ID="ID_969196826" MODIFIED="1507278640981" TEXT="New release">
<node CREATED="1507211783698" FOLDED="true" ID="ID_1616836923" MODIFIED="1507278634420" TEXT="Show what happens when a new version is released">
<node CREATED="1507211789894" ID="ID_778185641" MODIFIED="1507218199593" TEXT="Ask the developer to change a label in the back end service and to release the new version in production"/>
<node CREATED="1507218202740" FOLDED="true" ID="ID_95999290" MODIFIED="1507278589072" TEXT="The ops guy explains that in order to release the new version he needs to *modify* the productive server, and in the time needed to perform the modification he&apos;s forced to have a downtime: the service supply to the customer will be paused for a while. Therefore, he will try to be as fast as possible.">
<node CREATED="1507211796333" ID="ID_97096663" MODIFIED="1507218356923" TEXT="We need to setup a maintenance page, or to alert users that the front end application will experience a short down. "/>
</node>
<node CREATED="1507211811222" FOLDED="true" ID="ID_493569467" MODIFIED="1507278632745" TEXT="Also explain that this short down timeframe is very risky, for 3 reasons:">
<node CREATED="1507211816709" ID="ID_1087017082" MODIFIED="1507218710206" TEXT="Should the deployment fail for any reasons, we would need to recover the system while customers are experiencing a service suspension. The risk is with unexpected events during the recovery phase."/>
<node CREATED="1507218678461" ID="ID_1235812440" MODIFIED="1507218786963" TEXT="Since during the deployment we have a downtime, we must operate in emergency mode, and it&apos;s hard to be accurate while in a hurry."/>
<node CREATED="1507211822724" ID="ID_790486422" MODIFIED="1507218826346" TEXT="Rollback is just like an ordinary deployment, subjected to the exact same risks as the deployment of a new version. Therefore, should the deployment fail, we risk that the rollback fails as well."/>
</node>
</node>
</node>
<node CREATED="1507212447313" FOLDED="true" ID="ID_409655674" MODIFIED="1507278708056" TEXT="High load">
<node CREATED="1507211847135" FOLDED="true" ID="ID_1298881858" MODIFIED="1507278707548" TEXT="Show what happens when the backend is hit by a huge load of requests">
<node CREATED="1507211853780" ID="ID_1930830046" MODIFIED="1507218874184" TEXT="Show, helped by the diagram, that sub systems are tightly coupled, and therefore issues on one side effect behaviours on another side. Issues propagate."/>
<node CREATED="1507218880306" ID="ID_488457464" MODIFIED="1507218914499" TEXT="Explain that we will initiate a huge bulk load against the database, aimed to update the data with tons of new transactions"/>
<node CREATED="1507218915076" ID="ID_282101314" MODIFIED="1507218951547" TEXT="Show that the front end applications starts slowing down and failing"/>
<node CREATED="1507218972634" ID="ID_1768956646" MODIFIED="1507219005580" TEXT="Wait until the bulk load finishes, and show how the front end application recovers"/>
<node CREATED="1507278651891" ID="ID_1999921024" MODIFIED="1507278705765" TEXT="do the same increasing the number of users, to show that the system doesn&apos;t scale"/>
</node>
</node>
<node CREATED="1507212453812" FOLDED="true" ID="ID_428448140" MODIFIED="1507278875162" TEXT="Outage">
<node CREATED="1507211868996" FOLDED="true" ID="ID_222607640" MODIFIED="1507278874638" TEXT="Show what happens when one of the servers has an outage">
<node CREATED="1507211880602" ID="ID_1504062550" MODIFIED="1507221442185" TEXT="Announce you are going to plug out the network wire from the server hosting the back end web service (or the database)."/>
<node CREATED="1507221443172" ID="ID_1362411173" MODIFIED="1507221487414" TEXT="Do it, and show how the front end application gets completely red, meaning that the whole system failed."/>
<node CREATED="1507212539694" FOLDED="true" ID="ID_1263580920" MODIFIED="1507278874262" TEXT="Explain why">
<node CREATED="1507221505203" ID="ID_362618554" MODIFIED="1507221687064" TEXT="although subsystems are distributed on separate servers, they are tightly coupled: one functionality relies on the service provided by another one, in a synchronous way. If one fails, all the downstream service also fail."/>
<node CREATED="1507221688662" ID="ID_1830198269" MODIFIED="1507221743174" TEXT="Service are physically distributed, but they are all part of the same chain. And the whole chain is strong as its weakest element."/>
</node>
</node>
</node>
<node CREATED="1507212493239" FOLDED="true" ID="ID_1450344336" MODIFIED="1507278887672" TEXT="Recap">
<node CREATED="1507211892418" ID="ID_1129026096" MODIFIED="1507218619209" TEXT="We saw that the system reacted to the deployment of a new version with a downtime"/>
<node CREATED="1507211905403" ID="ID_987994472" MODIFIED="1507211906933" TEXT="We saw what happens when one subsystem is subjected to a very high load, and how the issues propagate to other sub systems, up to the customer."/>
<node CREATED="1507211912074" ID="ID_1806537325" MODIFIED="1507211913260" TEXT="Finally, we saw that the system is not resilient to the failure of a server."/>
</node>
</node>
<node CREATED="1507211532454" FOLDED="true" ID="ID_1569730562" MODIFIED="1507279715786" TEXT="Containerized Microservices solution">
<node CREATED="1507212472408" FOLDED="true" ID="ID_1122686179" MODIFIED="1507279571437" TEXT="Presentation">
<node CREATED="1507211940744" ID="ID_189448945" MODIFIED="1507275295681" TEXT="Let&apos;s repeat the same: deployment, huge load, and failure of a server. This time, we will use containers."/>
<node CREATED="1507221778202" ID="ID_780092959" MODIFIED="1507275335456" TEXT="Containers are a a family of technologies aimed to isolate services. They are just like virtual machine, but much lighter. "/>
<node CREATED="1507221819329" FOLDED="true" ID="ID_940875917" MODIFIED="1507278930673" TEXT="Note that in this second part of the demo">
<node CREATED="1507211959103" ID="ID_381334474" MODIFIED="1507275372589" TEXT="We are also going to use the very same servers, the 3 old laptop on this table."/>
<node CREATED="1507211948641" ID="ID_73560495" MODIFIED="1507221831396" TEXT="We will be using the same software components"/>
<node CREATED="1507211953976" ID="ID_885693854" MODIFIED="1507275406027" TEXT="The only difference: we will use a different architecture, the so called Microservices Architecture. Services are incapsulated into containers, with the help of Docker and some other technologies from Google and RedHat. The software components are the same, but we will distribute them in a cloud, running in the 3 old PCs here in front of us."/>
</node>
<node CREATED="1507222333515" FOLDED="true" ID="ID_867029252" MODIFIED="1507279040986" TEXT="Overview on Containers and Container Coreography">
<node CREATED="1507222049502" ID="ID_206361431" MODIFIED="1507275530927" TEXT="The container stack allows us to link the 3 PCs and treat them as they were a single super computer: we could add a 4th PC to increase the power of our little cluster. We could scale it as much as we want. We could even add a PC rented on Amazon or on Azure, and make it part of our virtual super server."/>
<node CREATED="1507222139135" ID="ID_1394029189" MODIFIED="1507275552830" TEXT="All the 3 PCs are equal. We don&apos;t have a front end, a back end and a database server anymore: each PC will run instances of any of our sub systems."/>
<node CREATED="1507275652459" ID="ID_1126959204" MODIFIED="1507275691552" TEXT="When you run something on this cluster, you don&apos;t care anymore which particular PC is hosting it. It could be anywhere. It could even move, from one PC to another."/>
<node CREATED="1507222209924" ID="ID_1129032139" MODIFIED="1507275700335" TEXT="In fact, we won&apos;t be neither running a single instance of our sub systems, as we did before. Instead of having 1 web service, 1 db and 1 front end, we could have multiple instances, all running in the cloud. Docker allows us easily run multiple copies of each subsystem. We won&apos;t care where they will be running: some here (point one PC), some here (point another one). They are really distributed."/>
<node CREATED="1507222326168" FOLDED="true" ID="ID_676235968" MODIFIED="1507279035222" TEXT="More importantly, each container">
<node CREATED="1507222449329" ID="ID_1338384877" MODIFIED="1507222450439" TEXT="is meant to run autonomously. "/>
<node CREATED="1507222450875" ID="ID_1313738791" MODIFIED="1507279033777" TEXT="it is also meant to fail without any global impact. We have multiple copies of it, and it would be replaced by another brand new one anyway. We just won&apos;t care anymore if one container fails. It&apos;s just a number."/>
</node>
<node CREATED="1507222239323" ID="ID_882130684" MODIFIED="1507275743565" TEXT="A good way to describe this is thhe Pet vs Cattles metaphore."/>
</node>
<node CREATED="1507275752062" ID="ID_1330494467" MODIFIED="1507275794059" TEXT="So far, there are no containers on these 3 laptops. We must deploy them yet, which we will do in a minute, live."/>
<node CREATED="1507267288505" FOLDED="true" ID="ID_211520628" MODIFIED="1507279569568" TEXT="We installed Kubernetes on these 3 PCs">
<node CREATED="1507267315781" ID="ID_836697928" MODIFIED="1507267355957" TEXT="Kubernetes is the tool Google has been using since always to manage its 100.000 servers cluster"/>
<node CREATED="1507267356413" ID="ID_1389753358" MODIFIED="1507275850641" TEXT="It&apos;s apparent that with 100.000 servers to manage Google cannot afford to have engineers to set up and configure, manually, servers one by one, manually. They must have some high automation mechanism."/>
<node CREATED="1507267453573" ID="ID_115967973" MODIFIED="1507276085068" TEXT="We took the same approach. Although it was possible to setup things manually, we preferred to write a script to perform all the Ops task in an automatic fashion. In a minute we will set up and configure our Issuing Server cluster, on these 3 PCs, with no human intervention."/>
<node CREATED="1507267567755" FOLDED="true" ID="ID_229184801" MODIFIED="1507279565880" TEXT="Diagrams">
<node CREATED="1507267493435" ID="ID_1618764007" MODIFIED="1507276105764" TEXT="This is what we want to obtain. Show the old diagram."/>
<node CREATED="1507267509384" ID="ID_864586798" MODIFIED="1507276133986" TEXT="And since we are using containers, we want 2,3, 4 instances of the back end service running. And a load balancer to direct traffic (show the diagram with the load balancer)"/>
<node CREATED="1507267582275" ID="ID_1025907920" MODIFIED="1507276191256" TEXT="We also want a cluster of dbs. Let&apos;s ask for 3 nodes (show the final diagram).&#xa;[Hopefully the diagram should be complex enough to make it apparent that setting up such infrastructure must be a not simple task to be performed with the old, manual approach]"/>
</node>
<node CREATED="1507267644517" FOLDED="true" ID="ID_1204451218" MODIFIED="1507278089092" TEXT="Ok, starting from the empty servers, let&apos;s run the script we wrote to setup and configure the cluster, and to deploy the services">
<node CREATED="1507267621036" ID="ID_1659488496" MODIFIED="1507267712213" TEXT="Run the script and wait 15 seconds. The cluster will be up and running."/>
</node>
<node CREATED="1507267713439" FOLDED="true" ID="ID_1321250258" MODIFIED="1507279564494" TEXT="Dashboard">
<node CREATED="1507267721621" ID="ID_1869259474" MODIFIED="1507267733884" TEXT="From this dashboard we can control all the ecosystem"/>
<node CREATED="1507267734398" ID="ID_1804209546" MODIFIED="1507267752806" TEXT="Show that the frontend application is already up and running, with all the frames green"/>
<node CREATED="1507276204313" FOLDED="true" ID="ID_1275336171" MODIFIED="1507279561320" TEXT="Show on the dashboard the various sub systems.">
<node CREATED="1507267753608" FOLDED="true" ID="ID_197888711" MODIFIED="1507279560800" TEXT="See here that we are running 3 instances of the web service. Spinning up a new instance, that is, deploying a new web service, is a matter of a click">
<node CREATED="1507267807667" ID="ID_1349324391" MODIFIED="1507267824989" TEXT="click and show how to scale up the service"/>
<node CREATED="1507267848009" ID="ID_1219536373" MODIFIED="1507267961931" TEXT="Since every single task has been highly automatized, we could even monitor the real traffic and dynamically deploy new servers when we have spikes, and decommission them, to save money and resources, during the idle moments, for example during the night."/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1507212476519" FOLDED="true" ID="ID_81958304" MODIFIED="1507279626899" TEXT="New release">
<node CREATED="1507211972236" FOLDED="true" ID="ID_97258084" MODIFIED="1507279626087" TEXT="Show what happens when a new version is released">
<node CREATED="1507211977980" ID="ID_733530845" MODIFIED="1507211978923" TEXT="Ask the developer to make change a label in the back end service."/>
<node CREATED="1507222553837" ID="ID_1672654003" MODIFIED="1507222567340" TEXT="The developer says he produced a new container."/>
<node CREATED="1507222567810" ID="ID_864933808" MODIFIED="1507222592507" TEXT="The Ops says he&apos;s pushing the new container in the cloud."/>
<node CREATED="1507222625206" ID="ID_319897744" MODIFIED="1507279587596" TEXT="On the front end">
<node CREATED="1507211983135" ID="ID_149055492" MODIFIED="1507222634571" TEXT="Show that the front end application shows no downtime."/>
<node CREATED="1507222617979" ID="ID_1188212755" MODIFIED="1507222623594" TEXT="Also show that There&apos;s no downtime. Why?"/>
</node>
<node CREATED="1507222648152" FOLDED="true" ID="ID_533478655" MODIFIED="1507279611982" TEXT="Why">
<node CREATED="1507218533407" ID="ID_1352311583" MODIFIED="1507279593510" TEXT="Automation">
<node CREATED="1507222656181" ID="ID_1870696513" MODIFIED="1507222729902" TEXT="We automate everything. Literally everything, from setup to deployment, has been scripted, so that no human intervention was needed to get from the empty PC to the state the PCs are in this very moment."/>
</node>
<node CREATED="1507211989287" ID="ID_637059324" MODIFIED="1507222652327" TEXT="Immutability and Blue/Green deployment: explain how new versions are released"/>
</node>
<node CREATED="1507211994255" FOLDED="true" ID="ID_1029605698" MODIFIED="1507279625650" TEXT="Opportunities">
<node CREATED="1507211999426" ID="ID_1130372715" MODIFIED="1507212000346" TEXT="Rolling deployment"/>
<node CREATED="1507212004246" ID="ID_555899134" MODIFIED="1507212005162" TEXT="A/B testing"/>
<node CREATED="1507212008619" ID="ID_433076427" MODIFIED="1507212009537" TEXT="Immutability enables deterministic rollbacks"/>
</node>
</node>
</node>
<node CREATED="1507212481288" FOLDED="true" ID="ID_1151856385" MODIFIED="1507279675045" TEXT="High load">
<node CREATED="1507212014471" FOLDED="true" ID="ID_1968623431" MODIFIED="1507279674209" TEXT="Show what happens when the backend is hit by a huge load of requests">
<node CREATED="1507212020566" ID="ID_400868587" MODIFIED="1507212021393" TEXT="Asynchronous communication enables the high availability, since services are independent and authonomous">
<node CREATED="1507279657018" ID="ID_229756268" MODIFIED="1507279673039" TEXT="Decoupling is mandatory in Microservices Architecture"/>
</node>
<node CREATED="1507211860924" ID="ID_219391298" MODIFIED="1507211862478" TEXT="Should we mention bulk heads?"/>
<node CREATED="1507212025349" ID="ID_1212269924" MODIFIED="1507212026265" TEXT="Microservices are independently scalable: the most stressed service can be scaled up: show how."/>
</node>
</node>
<node CREATED="1507212485148" FOLDED="true" ID="ID_1921259158" MODIFIED="1507279713935" TEXT="Outage">
<node CREATED="1507211961050" FOLDED="true" ID="ID_1957998073" MODIFIED="1507279711663">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Show what happens when one of the servers has an outage
    </p>
  </body>
</html></richcontent>
<node CREATED="1507212045101" FOLDED="true" ID="ID_359501371" MODIFIED="1507279711144" TEXT="This means that the system is inherently resilient to outages: a part can fail without causing the failure of the whole system">
<node CREATED="1507212051269" FOLDED="true" ID="ID_1873775547" MODIFIED="1507279710857" TEXT="Resiliency is obtained with 2 strategies: ">
<node CREATED="1507212057380" ID="ID_1222908136" MODIFIED="1507212058560" TEXT="with Shared Nothing (services are independent from eachothers and don&apos;t rely on any shared resources, so they can survive xxxxxx) with r"/>
<node CREATED="1507212063180" ID="ID_689510" MODIFIED="1507212064072" TEXT="with a very high Redundancy: containers make redundancy easy; xxxx  ()deploy n more instances of the servie), so failures can be "/>
</node>
</node>
</node>
</node>
<node CREATED="1507212487984" ID="ID_1683741143" MODIFIED="1507212512169" TEXT="Final comment"/>
</node>
<node CREATED="1507212073920" FOLDED="true" ID="ID_1345274277" MODIFIED="1510128898385" TEXT="Conclusion">
<node CREATED="1507212075316" ID="ID_954880536" MODIFIED="1507280847633">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Advantages
    </p>
  </body>
</html></richcontent>
<node CREATED="1507212093556" ID="ID_800298232" MODIFIED="1507212095030" TEXT="Explain that most everything showed would possible without containers (it would have been possible to decouple subsystems with an asynchronous queue, and to use more balanced service instances): containers just make it extremely easy, fast and cheap."/>
<node CREATED="1507279746992" ID="ID_1482457610" MODIFIED="1507279767550" TEXT="Without Docker and container, the same result would be possible at a very high cost"/>
<node CREATED="1507280849586" ID="ID_1098985434" MODIFIED="1507280854964" TEXT="Disaster Recovery"/>
</node>
<node CREATED="1507212101786" ID="ID_440372864" MODIFIED="1507582102167" TEXT="Risks, costs and challenges">
<node CREATED="1507279783995" ID="ID_1928457104" MODIFIED="1507582102171" TEXT="The introduction of container technology causes a huge change, comparable of even bigger than the introduction of webMethods.">
<node CREATED="1507279828653" ID="ID_803254009" MODIFIED="1507279840916" TEXT="We need very specialized and skilled developers and ops"/>
<node CREATED="1507279841692" ID="ID_1496089794" MODIFIED="1507279852070" TEXT="We need specialized processes"/>
</node>
</node>
</node>
</node>
<node CREATED="1510128902302" ID="ID_1853490631" MODIFIED="1510128906142" POSITION="right" TEXT="Seconda idea">
<node CREATED="1510129175940" ID="ID_1721390985" MODIFIED="1510292765169" TEXT="plot">
<node CREATED="1510129379608" ID="ID_518196430" MODIFIED="1510302617511" TEXT="The day before">
<node CREATED="1510152178485" ID="ID_1505865299" MODIFIED="1510302618072" TEXT="We need to schedule the deployment">
<node CREATED="1510152143101" ID="ID_1835148490" MODIFIED="1510302619325" TEXT="PM asks about the availability of everyone">
<node CREATED="1510292825375" ID="ID_490231216" MODIFIED="1510293319204" TEXT="That&apos;s the story of an ordinary deployment in our company">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510292849701" ID="ID_1762438573" MODIFIED="1510293319206" TEXT="In few days we are releasing a new version of our portal.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510292860149" ID="ID_1091212360" MODIFIED="1510293319207" TEXT="Meet Anna, the PM.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293029783" ID="ID_1097956921" MODIFIED="1510302070140" TEXT="Anna asks &quot;Is everybody available on the next Monday? Is there the reference developer? Do we have the DBA? Network, is it covered?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293135852" ID="ID_199228552" MODIFIED="1510293715549" TEXT="Anna asks the release manager not to schedule any other task, since the company will need all of his engagement.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1510152168538" ID="ID_1024995857" MODIFIED="1510309988296" TEXT="if only one isn&apos;t available">
<node CREATED="1510152192232" ID="ID_250295318" MODIFIED="1510302621901" TEXT="we must postpone, since">
<node CREATED="1510152200982" ID="ID_1883598519" MODIFIED="1510302623136" TEXT="only that person knows how the specific server works">
<node CREATED="1510293079336" ID="ID_1941447078" MODIFIED="1510302129194" TEXT="Some one says the Sherlock, the SysAdmin will be off, on vacation">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293371318" ID="ID_1829226417" MODIFIED="1510293701785" TEXT="&quot;OK - asks Anna - can anyone replace him for this deployment?&quot;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293394108" ID="ID_519120078" MODIFIED="1510293696150" TEXT="&quot;Yes and no - Paolo&apos;s boss says- as Paolo is actually the only one who perfectly knows the target server we must deploy to. Of course we could asks someone else to work on his behalf, but should we have any trouble... you know, the server SNPTP101 is so peculiar, it runs the FooBar db, Paolo has been always assigned to it, he configured it, and no one else really knows how it exactly works&quot;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510152218743" ID="ID_749057486" MODIFIED="1510294026859" TEXT="&quot;Ok - Anna says - let&apos;s postpone the deployment the next week, it&apos;s safer&quot;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293784879" ID="ID_1533978140" MODIFIED="1510294026860" TEXT="We have two terms for this phenomena: &quot;Configuration shift&quot; and &quot;Snowflake&quot;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293725499" ID="ID_717668204" MODIFIED="1510294026860" TEXT="We may start with two identical servers, but since they are handcrafted, and since operators and developers log into them and make changes to their configuration, they try and rollback settings, they make fine tunings on demand, they often end up to diverge, and divergence gets higher over time.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510293947575" ID="ID_544950696" MODIFIED="1510294026866" TEXT="And each server ends up being a very unique server. It&apos;s very likely that the operator who worked on it during the months and the years ends up being the only one who knows all the nuances and secrets, and is the only one who can actualy work on it.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1510152235611" ID="ID_1862512856" MODIFIED="1510307287553" TEXT="We plan the deployment, freezing any other activities">
<node CREATED="1510294046440" ID="ID_230654122" MODIFIED="1510294140134" TEXT="&quot;Of course - Anna says - we should freeze any other activities, as a deployment is such a delicate and risky activity&quot;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1510129425943" ID="ID_1956859186" MODIFIED="1510302829226" TEXT="The Release Day">
<node CREATED="1510129613850" ID="ID_1495138776" MODIFIED="1510302829946" TEXT="The morning">
<node CREATED="1510152290384" ID="ID_370855900" MODIFIED="1510302837179" TEXT="Everybody up at 6am">
<node CREATED="1510152297137" ID="ID_1293604725" MODIFIED="1510294217005" TEXT="The deployment activity causes a downtime, and it&apos;s a risky task">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510152317744" ID="ID_1234528175" MODIFIED="1510294226905" TEXT="so we must reduce the risk, working in a relatively idle timeframe">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1510294230390" ID="ID_376788830" MODIFIED="1510294266228" TEXT="That&apos;s why the deployment has been scheduled at 6 oclock in the morning">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1510129154930" ID="ID_1824668819" MODIFIED="1510302837183" TEXT="Of course we will have a downtime during the deployment anyway">
<node CREATED="1510152368919" ID="ID_672091590" MODIFIED="1510302837189" TEXT="We need a maintenance page">
<node CREATED="1510222421833" ID="ID_1503644608" MODIFIED="1510222486758" TEXT="do you remember when ISPIN sent us chocolate pralines, as they forgot to setup the maintenance page and they caused issues to our cardholders during the deployment?"/>
<node CREATED="1510222487329" ID="ID_1365326065" MODIFIED="1510222510724" TEXT="This happened, and may happen again, since the deployment is a manual operation"/>
</node>
<node CREATED="1510152376772" ID="ID_1492307259" MODIFIED="1510152405709" TEXT="everyone cross their fingers hoping the deployment will be fast and seamless, with no surprises"/>
</node>
<node CREATED="1510129143327" ID="ID_896450582" MODIFIED="1510302837192" TEXT="It&apos;s a manual performed process, so it may fail">
<node CREATED="1510152447731" ID="ID_243084690" MODIFIED="1510152476916" TEXT="Some customers may have had a bad user experience. We just tolerate this as an inevitable consequence"/>
<node CREATED="1510129521815" ID="ID_610174941" MODIFIED="1510222555667" TEXT="Oops, the deployment actually fails."/>
</node>
<node CREATED="1510222565213" ID="ID_1092900347" MODIFIED="1510222637633" TEXT="Not a dramatic situation, anyway. In this case, we just notice than one server on 2 is not properly responding. We could go on and fix this later, but it&apos;s better to rollback."/>
<node CREATED="1510302967308" ID="ID_778345285" MODIFIED="1510302975961" TEXT="Pressione sulla tempistica"/>
<node CREATED="1510128940264" ID="ID_1654493176" MODIFIED="1510302837194" TEXT="This happens because each server is a snowflake">
<node CREATED="1510128945321" ID="ID_147193381" MODIFIED="1510222673473" TEXT="So it may happen that one server behaves differently than another one"/>
<node CREATED="1510222674418" ID="ID_187759691" MODIFIED="1510222684525" TEXT="We must investigate on the specific server"/>
<node CREATED="1510222685517" ID="ID_440783681" MODIFIED="1510222715742" TEXT="And for this, as usual, we must rely on a specific person, the Personal Janitor of that server."/>
</node>
<node CREATED="1510129012963" ID="ID_82103363" MODIFIED="1510302837195" TEXT="rollback can fail">
<node CREATED="1510129580758" ID="ID_1001056424" MODIFIED="1510129600508" TEXT="rollback is another deployment"/>
<node CREATED="1510152573030" ID="ID_1291394249" MODIFIED="1510152592448" TEXT="we are lucky, and the rollback goes smooth"/>
</node>
</node>
<node CREATED="1510129622640" ID="ID_1224428189" MODIFIED="1510303027669" TEXT="The afternoon">
<node CREATED="1510152606230" ID="ID_840355625" MODIFIED="1510303029345" TEXT="A debriefing">
<node CREATED="1510129020629" ID="ID_1684919550" MODIFIED="1510303030377" TEXT="Works on my machine">
<node CREATED="1510129039767" ID="ID_1748712225" MODIFIED="1510303033130" TEXT="environment differenti">
<node CREATED="1510152806873" ID="ID_1630053498" MODIFIED="1510303033142" TEXT="why?">
<node CREATED="1510128940264" ID="ID_1090881643" MODIFIED="1510303033145" TEXT="Because servers are snowflakes">
<node CREATED="1510152825776" ID="ID_563382158" MODIFIED="1510152839440" TEXT="SysAdmin and Developers change its configuration"/>
<node CREATED="1510152841989" ID="ID_1871965102" MODIFIED="1510152846544" TEXT="over and over and over"/>
<node CREATED="1510152881494" ID="ID_1865578152" MODIFIED="1510152899239" TEXT="No one writes down the exact list of manual operations operated on a server"/>
<node CREATED="1510152847265" ID="ID_324623053" MODIFIED="1510152905014" TEXT="so the server ends up being a unique machine, that no one is able to easily rebuild from scratch"/>
</node>
<node CREATED="1510152908381" ID="ID_1663245155" MODIFIED="1510153001539" TEXT="Hopefully, there&apos;s a dedicated System Administrator that has being knowing that server since ages. He knows anything and everything about it"/>
<node CREATED="1510153015509" ID="ID_569599349" MODIFIED="1510153077539" TEXT="Developers had their own servers, which of course is different from the productive one"/>
</node>
</node>
</node>
</node>
<node CREATED="1510152622157" ID="ID_392356012" MODIFIED="1510303033147" TEXT="The future">
<node CREATED="1510129307070" ID="ID_1316850647" MODIFIED="1510303033149" TEXT="Next November 24th it&apos;s Black Friday">
<node CREATED="1510152667213" ID="ID_1024829979" MODIFIED="1510303033151" TEXT="We would need 3 new servers">
<node CREATED="1510152676006" ID="ID_228715770" MODIFIED="1510152688916" TEXT="only for 2 days, then we might even discard them"/>
<node CREATED="1510152693995" ID="ID_329151540" MODIFIED="1510303033152" TEXT="Not possible. Creating servers is">
<node CREATED="1510152721300" ID="ID_658860344" MODIFIED="1510152727643" TEXT="slow because it&apos;s manual"/>
<node CREATED="1510152728050" ID="ID_536025680" MODIFIED="1510152731003" TEXT="expensive"/>
</node>
</node>
<node CREATED="1510151630076" ID="ID_221563258" MODIFIED="1510152740908" TEXT="So the System does not scale"/>
<node CREATED="1510128956898" ID="ID_1318971485" MODIFIED="1510303033155" TEXT="Even the Ops team does not scale">
<node CREATED="1510152749513" ID="ID_1082859995" MODIFIED="1510152788890" TEXT="We can&apos;t just scale from 100 to 1000 servers without correspondingly increment the number of technical people"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1510128921127" ID="ID_696431430" MODIFIED="1510302825567" TEXT="I have a dream">
<node CREATED="1510129733346" ID="ID_283795728" MODIFIED="1510303224560" TEXT="Immutability + automation">
<node CREATED="1510222999179" ID="ID_83674651" MODIFIED="1510303224562" TEXT="Immutability">
<node CREATED="1510129736550" ID="ID_598722818" MODIFIED="1510303224566" TEXT="if we had a sort of original model">
<node CREATED="1510223006941" ID="ID_576157305" MODIFIED="1510223037066" TEXT="we could print out servers with our application inside them from the the Original Model"/>
<node CREATED="1510223059702" ID="ID_1721792540" MODIFIED="1510303224568" TEXT="They would me immutable, so no one could manually mess up their configuration">
<node CREATED="1510129973534" ID="ID_1169287106" MODIFIED="1510303224569" TEXT="No snowflakes">
<node CREATED="1510151955491" ID="ID_255637087" MODIFIED="1510153165223" TEXT="each server is an exact copy of the model, no surprises"/>
</node>
</node>
<node CREATED="1510129758305" ID="ID_879063173" MODIFIED="1510303224572" TEXT="we could focus on the original model">
<node CREATED="1510223116260" ID="ID_967518333" MODIFIED="1510223163258" TEXT="we could concentrate all out effort on the Original Model"/>
<node CREATED="1510223368735" ID="ID_1818614558" MODIFIED="1510223408051" TEXT="without repeating over and over the same configuration over and over for each server"/>
<node CREATED="1510223408052" ID="ID_1763420455" MODIFIED="1510223440186" TEXT="with the risk to do the configuration slightly differently, and end up with different servers"/>
<node CREATED="1510223167532" ID="ID_25003927" MODIFIED="1510223456786" TEXT="On the contrary, configuration would be done once, and at the highest quality"/>
<node CREATED="1510223191348" ID="ID_431465189" MODIFIED="1510223477210" TEXT="We could do the same for security, for networking, for application configuration "/>
</node>
</node>
</node>
<node CREATED="1510223730817" ID="ID_428298197" MODIFIED="1510303224577" TEXT="automation">
<node CREATED="1510223738972" ID="ID_33761724" MODIFIED="1510328241162" TEXT="if the process of printing servers was really fast and cheap..."/>
<node CREATED="1510223790727" ID="ID_1669860691" MODIFIED="1510303224581" TEXT="benefits">
<node CREATED="1510152000845" ID="ID_792486796" MODIFIED="1510152011832" TEXT="we could print serves on demand, when needed"/>
<node CREATED="1510152012257" ID="ID_1987131450" MODIFIED="1510223810544" TEXT="we would have no dependency from personal knowledge"/>
<node CREATED="1510152065688" ID="ID_1216345189" MODIFIED="1510152104517" TEXT="ops could be interchangeable"/>
<node CREATED="1510129904024" ID="ID_749018440" MODIFIED="1510303224583" TEXT="we could preform blue/green deployments">
<node CREATED="1510129914316" ID="ID_310083042" MODIFIED="1510129920683" TEXT="during working hour"/>
<node CREATED="1510129993087" ID="ID_1984886502" MODIFIED="1510154952492" TEXT="no downtime"/>
</node>
</node>
</node>
<node CREATED="1510223924069" ID="ID_1489598200" MODIFIED="1510303224587" TEXT="having immutability and automation together">
<node CREATED="1510130028540" ID="ID_1554990171" MODIFIED="1510328420196" TEXT="Works the same everywhere">
<node CREATED="1510130041382" ID="ID_776241828" MODIFIED="1510130057678" TEXT="sviluppatore si stampa i suoi server produttivi per provare il locale"/>
<node CREATED="1510154985242" ID="ID_1792750994" MODIFIED="1510155024219" TEXT="Developers may have their servers, printing them from the original model, and use them during development"/>
<node CREATED="1510155024844" ID="ID_215175530" MODIFIED="1510155044562" TEXT="All the environments would be identical"/>
</node>
<node CREATED="1510154955242" ID="ID_1927897446" MODIFIED="1510223921808" TEXT="the deployment becomes deterministic"/>
<node CREATED="1510330832012" ID="ID_1621618181" MODIFIED="1510330869965" TEXT="and we don&apos;t need to deploy at 6am"/>
<node CREATED="1510154967274" ID="ID_713198316" MODIFIED="1510223921806" TEXT="Rollbacks as well would be deterministic"/>
<node CREATED="1510130068135" ID="ID_416356133" MODIFIED="1510303224596" TEXT="Black Friday">
<node CREATED="1510155054142" ID="ID_509885274" MODIFIED="1510155067253" TEXT="We could print some servers on demand"/>
<node CREATED="1510155069282" ID="ID_135749388" MODIFIED="1510303224596" TEXT="We might even print disposable servers, to dynamical adapt to the traffic, in real time">
<node CREATED="1510155098126" ID="ID_368671513" MODIFIED="1510155114247" TEXT="Like in a real elastic cloud"/>
</node>
<node CREATED="1510155121580" ID="ID_1973165614" MODIFIED="1510303224597" TEXT="Focusing only on the original model, and on the automation, we could scale the number of servers without increasing the number of employees in the Ops team">
<node CREATED="1510155162511" ID="ID_461099738" MODIFIED="1510155168046" TEXT="Pets vs Cattles"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1510128926222" ID="ID_1525787211" MODIFIED="1510304250487" TEXT="Meet Docker">
<node CREATED="1510130155784" ID="ID_685651097" MODIFIED="1510304252954" TEXT="Docker">
<node CREATED="1510330333003" ID="ID_960942134" MODIFIED="1510330335909" TEXT="amazon, google"/>
<node CREATED="1510292622668" ID="ID_607390377" MODIFIED="1510292657407" TEXT="it runs a program letting it believe it is the only one running in the server"/>
<node CREATED="1510292657848" ID="ID_178739957" MODIFIED="1510292695265" TEXT="It isolates programs, segregating them in cages"/>
<node CREATED="1510292697981" ID="ID_1137978936" MODIFIED="1510292755191" TEXT="and it allows to programmatically configure that cages so they perfectly resemble a fully fledge and configured server"/>
</node>
<node CREATED="1510130167229" ID="ID_452951532" MODIFIED="1510304252956" TEXT="DevOps / DevSecOps">
<node CREATED="1510130197284" ID="ID_1788248474" MODIFIED="1510304252959" TEXT="focus sulla matrice">
<node CREATED="1510130205041" ID="ID_1273589779" MODIFIED="1510304252961" TEXT="matrice immutabile = ">
<node CREATED="1510130209507" ID="ID_658786921" MODIFIED="1510304252964" TEXT="+">
<node CREATED="1510130219362" ID="ID_388791374" MODIFIED="1510304252965" TEXT="server configuration ">
<node CREATED="1510130236333" ID="ID_1678859881" MODIFIED="1510130238896" TEXT="security"/>
</node>
<node CREATED="1510130226288" ID="ID_1156852088" MODIFIED="1510130232273" TEXT="application"/>
</node>
</node>
<node CREATED="1510130245507" ID="ID_1066465519" MODIFIED="1510130253595" TEXT="per cui Dev + Ops + Security"/>
</node>
</node>
</node>
<node CREATED="1510302228026" ID="ID_597607635" MODIFIED="1510302235480" TEXT="Dialogo">
<node CREATED="1510302235791" ID="ID_1653522638" MODIFIED="1510302240240" TEXT="Anna">
<node CREATED="1510302247249" ID="ID_1421253403" MODIFIED="1510302247249" TEXT=""/>
</node>
<node CREATED="1510302240849" ID="ID_1982733353" MODIFIED="1510302245688" TEXT="Sherlock"/>
</node>
</node>
</node>
</node>
</map>
