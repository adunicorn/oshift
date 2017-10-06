<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1507211492372" ID="ID_1554200275" MODIFIED="1507211504318" TEXT="Container Smart Day">
<node CREATED="1507211506197" FOLDED="true" ID="ID_1250106451" MODIFIED="1507277286273" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Presentation and overall goal
    </p>
  </body>
</html></richcontent>
<node CREATED="1507211613091" FOLDED="true" ID="ID_584411252" MODIFIED="1507214551909" TEXT="What we wish to demonstrate with the demo">
<node CREATED="1507211626400" ID="ID_1981292099" MODIFIED="1507214060879" TEXT="We want to show how containers technology may be an interesting topic to investigate on."/>
<node CREATED="1507214061720" FOLDED="true" ID="ID_334865038" MODIFIED="1507214238759" TEXT="We will use a typical use case for our reality.">
<node CREATED="1507211626406" FOLDED="true" ID="ID_480493702" MODIFIED="1507214237465" TEXT="Explain what the application does">
<node CREATED="1507211626407" ID="ID_60412904" MODIFIED="1507212296721" TEXT="The application is a simulator"/>
<node CREATED="1507212297765" ID="ID_1323440152" MODIFIED="1507212299089" TEXT="explain what the frames&apos; animations and colors mean."/>
<node CREATED="1507212303941" ID="ID_1168344644" MODIFIED="1507214083030" TEXT="Show a live example, so that the audience gets used to the meaning of what&apos;s shown."/>
</node>
<node CREATED="1507214193671" ID="ID_951399319" MODIFIED="1507214228289" TEXT="Show how this is comparable to our business (for example, the Issuing Service)"/>
</node>
<node CREATED="1507214120466" ID="ID_1402319181" MODIFIED="1507214138857" TEXT="Anticipate that we will show how this application reacts to">
<node CREATED="1507214138858" ID="ID_1849518414" MODIFIED="1507214158803" TEXT="deployments of new versions"/>
<node CREATED="1507214159368" ID="ID_92024849" MODIFIED="1507214168980" TEXT="intense traffic"/>
<node CREATED="1507214169553" ID="ID_1652251237" MODIFIED="1507214178343" TEXT="hardware or network failures"/>
</node>
<node CREATED="1507211626408" FOLDED="true" ID="ID_1788251864" MODIFIED="1507214253586" TEXT="Explain we are using 3 ordinary -- and very old -- PCs, so the whole demo is a scaled simulation. ">
<node CREATED="1507211715457" ID="ID_1558033400" MODIFIED="1507212355166" TEXT="All effects will be scaled as well and made more visible by the slowness of systems at hand."/>
<node CREATED="1507211725104" ID="ID_1494671474" MODIFIED="1507212390188" TEXT="In the real world, we would have tens of thousands users, much more data, and a more powerful instrumentations; consequences in the real world would be faster, bigger and on a much broader scale."/>
</node>
<node CREATED="1507214254172" FOLDED="true" ID="ID_1419568034" MODIFIED="1507214550381" TEXT="We want to compare 2 different architectural approaches">
<node CREATED="1507214268654" FOLDED="true" ID="ID_983443700" MODIFIED="1507214548285" TEXT="Monolithic approach">
<node CREATED="1507214443103" ID="ID_1753174058" MODIFIED="1507214547071" TEXT="That&apos;s the approach we have always used. It has been successfully supporting our business  until the request for high scalability and real time processing arose."/>
</node>
<node CREATED="1507214275909" FOLDED="true" ID="ID_982224589" MODIFIED="1507214549821" TEXT="Containerized Microservices">
<node CREATED="1507214293979" ID="ID_440661349" MODIFIED="1507214439387" TEXT="It&apos;s the topic of the Smart Day: by using a container technology stack (Docker, Kubernetes by Google and OpenShift by RedHat) we want to show how certain constraints can be overcome, and which advantages and opportunities we could benefit from."/>
</node>
</node>
</node>
</node>
<node CREATED="1507211512039" ID="ID_1003824162" MODIFIED="1507214553098" POSITION="right" TEXT="Monolithic solution">
<node CREATED="1507212435657" FOLDED="true" ID="ID_449898415" MODIFIED="1507214682448" TEXT="Presentation">
<node CREATED="1507211743990" ID="ID_336064635" MODIFIED="1507214608406" TEXT="Show a simplified diagram with the 3 components">
<node CREATED="1507214564602" ID="ID_1543484406" MODIFIED="1507214590326" TEXT="a frontend application (what&apos;s visible on the screen)"/>
<node CREATED="1507214572666" ID="ID_563152973" MODIFIED="1507214595269" TEXT="a back end web service"/>
<node CREATED="1507214574156" ID="ID_1558608643" MODIFIED="1507214575966" TEXT="a database"/>
</node>
<node CREATED="1507214609924" FOLDED="true" ID="ID_1125321292" MODIFIED="1507214681792" TEXT="Show how the application runs">
<node CREATED="1507214618478" ID="ID_463987732" MODIFIED="1507214643413" TEXT="Explain that the 3 servers has 3 different roles: each of them host one of the 3 components"/>
<node CREATED="1507214645785" ID="ID_1352821474" MODIFIED="1507214680625" TEXT="Show how the animations demonstrates a bunch of users are happily served by the system"/>
</node>
</node>
<node CREATED="1507212443905" FOLDED="true" ID="ID_969196826" MODIFIED="1507218832527" TEXT="New release">
<node CREATED="1507211783698" FOLDED="true" ID="ID_1616836923" MODIFIED="1507218828500" TEXT="Show what happens when a new version is released">
<node CREATED="1507211789894" ID="ID_778185641" MODIFIED="1507218199593" TEXT="Ask the developer to change a label in the back end service and to release the new version in production"/>
<node CREATED="1507218202740" FOLDED="true" ID="ID_95999290" MODIFIED="1507218650840" TEXT="The ops guy explains that in order to release the new version he needs to *modify* the productive server, and in the time needed to perform the modification he&apos;s forced to have a downtime: the service supply to the customer will be paused for a while. Therefore, he will try to be as fast as possible.">
<node CREATED="1507211796333" ID="ID_97096663" MODIFIED="1507218356923" TEXT="We need to setup a maintenance page, or to alert users that the front end application will experience a short down. "/>
</node>
<node CREATED="1507211811222" FOLDED="true" ID="ID_493569467" MODIFIED="1507218827680" TEXT="Also explain that this short down timeframe is very risky, for 3 reasons:">
<node CREATED="1507211816709" ID="ID_1087017082" MODIFIED="1507218710206" TEXT="Should the deployment fail for any reasons, we would need to recover the system while customers are experiencing a service suspension. The risk is with unexpected events during the recovery phase."/>
<node CREATED="1507218678461" ID="ID_1235812440" MODIFIED="1507218786963" TEXT="Since during the deployment we have a downtime, we must operate in emergency mode, and it&apos;s hard to be accurate while in a hurry."/>
<node CREATED="1507211822724" ID="ID_790486422" MODIFIED="1507218826346" TEXT="Rollback is just like an ordinary deployment, subjected to the exact same risks as the deployment of a new version. Therefore, should the deployment fail, we risk that the rollback fails as well."/>
</node>
</node>
</node>
<node CREATED="1507212447313" FOLDED="true" ID="ID_409655674" MODIFIED="1507219014721" TEXT="High load">
<node CREATED="1507211847135" FOLDED="true" ID="ID_1298881858" MODIFIED="1507219013986" TEXT="Show what happens when the backend is hit by a huge load of requests">
<node CREATED="1507211853780" ID="ID_1930830046" MODIFIED="1507218874184" TEXT="Show, helped by the diagram, that sub systems are tightly coupled, and therefore issues on one side effect behaviours on another side. Issues propagate."/>
<node CREATED="1507218880306" ID="ID_488457464" MODIFIED="1507218914499" TEXT="Explain that we will initiate a huge bulk load against the database, aimed to update the data with tons of new transactions"/>
<node CREATED="1507218915076" ID="ID_282101314" MODIFIED="1507218951547" TEXT="Show that the front end applications starts slowing down and failing"/>
<node CREATED="1507218972634" ID="ID_1768956646" MODIFIED="1507219005580" TEXT="Wait until the bulk load finishes, and show how the front end application recovers"/>
</node>
</node>
<node CREATED="1507212453812" FOLDED="true" ID="ID_428448140" MODIFIED="1507221749412" TEXT="Outage">
<node CREATED="1507211868996" FOLDED="true" ID="ID_222607640" MODIFIED="1507221748934" TEXT="Show what happens when one of the servers has an outage">
<node CREATED="1507211880602" ID="ID_1504062550" MODIFIED="1507221442185" TEXT="Announce you are going to plug out the network wire from the server hosting the back end web service (or the database)."/>
<node CREATED="1507221443172" ID="ID_1362411173" MODIFIED="1507221487414" TEXT="Do it, and show how the front end application gets completely red, meaning that the whole system failed."/>
<node CREATED="1507212539694" FOLDED="true" ID="ID_1263580920" MODIFIED="1507221748213" TEXT="Explain why">
<node CREATED="1507221505203" ID="ID_362618554" MODIFIED="1507221687064" TEXT="although subsystems are distributed on separate servers, they are tightly coupled: one functionality relies on the service provided by another one, in a synchronous way. If one fails, all the downstream service also fail."/>
<node CREATED="1507221688662" ID="ID_1830198269" MODIFIED="1507221743174" TEXT="Service are physically distributed, but they are all part of the same chain. And the whole chain is strong as its weakest element."/>
</node>
</node>
</node>
<node CREATED="1507212493239" FOLDED="true" ID="ID_1450344336" MODIFIED="1507221749981" TEXT="Recap">
<node CREATED="1507211892418" ID="ID_1129026096" MODIFIED="1507218619209" TEXT="We saw that the system reacted to the deployment of a new version with a downtime"/>
<node CREATED="1507211905403" ID="ID_987994472" MODIFIED="1507211906933" TEXT="We saw what happens when one subsystem is subjected to a very high load, and how the issues propagate to other sub systems, up to the customer."/>
<node CREATED="1507211912074" ID="ID_1806537325" MODIFIED="1507211913260" TEXT="Finally, we saw that the system is not resilient to the failure of a server."/>
</node>
</node>
<node CREATED="1507211532454" FOLDED="true" ID="ID_1569730562" MODIFIED="1507276242226" POSITION="right" TEXT="Containerized Microservices solution">
<node CREATED="1507212472408" FOLDED="true" ID="ID_1122686179" MODIFIED="1507276227596" TEXT="Presentation">
<node CREATED="1507211940744" ID="ID_189448945" MODIFIED="1507275295681" TEXT="Let&apos;s repeat the same: deployment, huge load, and failure of a server. This time, we will use containers."/>
<node CREATED="1507221778202" ID="ID_780092959" MODIFIED="1507275335456" TEXT="Containers are a a family of technologies aimed to isolate services. They are just like virtual machine, but much lighter. "/>
<node CREATED="1507221819329" FOLDED="true" ID="ID_940875917" MODIFIED="1507275408903" TEXT="Note that in this second part of the demo">
<node CREATED="1507211959103" ID="ID_381334474" MODIFIED="1507275372589" TEXT="We are also going to use the very same servers, the 3 old laptop on this table."/>
<node CREATED="1507211948641" ID="ID_73560495" MODIFIED="1507221831396" TEXT="We will be using the same software components"/>
<node CREATED="1507211953976" ID="ID_885693854" MODIFIED="1507275406027" TEXT="The only difference: we will use a different architecture, the so called Microservices Architecture. Services are incapsulated into containers, with the help of Docker and some other technologies from Google and RedHat. The software components are the same, but we will distribute them in a cloud, running in the 3 old PCs here in front of us."/>
</node>
<node CREATED="1507222333515" FOLDED="true" ID="ID_867029252" MODIFIED="1507275744834" TEXT="Overview on Containers and Container Coreography">
<node CREATED="1507222049502" ID="ID_206361431" MODIFIED="1507275530927" TEXT="The container stack allows us to link the 3 PCs and treat them as they were a single super computer: we could add a 4th PC to increase the power of our little cluster. We could scale it as much as we want. We could even add a PC rented on Amazon or on Azure, and make it part of our virtual super server."/>
<node CREATED="1507222139135" ID="ID_1394029189" MODIFIED="1507275552830" TEXT="All the 3 PCs are equal. We don&apos;t have a front end, a back end and a database server anymore: each PC will run instances of any of our sub systems."/>
<node CREATED="1507275652459" ID="ID_1126959204" MODIFIED="1507275691552" TEXT="When you run something on this cluster, you don&apos;t care anymore which particular PC is hosting it. It could be anywhere. It could even move, from one PC to another."/>
<node CREATED="1507222209924" ID="ID_1129032139" MODIFIED="1507275700335" TEXT="In fact, we won&apos;t be neither running a single instance of our sub systems, as we did before. Instead of having 1 web service, 1 db and 1 front end, we could have multiple instances, all running in the cloud. Docker allows us easily run multiple copies of each subsystem. We won&apos;t care where they will be running: some here (point one PC), some here (point another one). They are really distributed."/>
<node CREATED="1507222326168" ID="ID_676235968" MODIFIED="1507222447439" TEXT="More importantly, each container">
<node CREATED="1507222449329" ID="ID_1338384877" MODIFIED="1507222450439" TEXT="is meant to run autonomously. "/>
<node CREATED="1507222450875" ID="ID_1313738791" MODIFIED="1507222532757" TEXT="it is also meant to fail without any global impact. We have multiple copies of it, and it would be replaced by another one anyway. We just won&apos;t care anymore if one container fails. It&apos;s just a number."/>
</node>
<node CREATED="1507222239323" ID="ID_882130684" MODIFIED="1507275743565" TEXT="A good way to describe this is thhe Pet vs Cattles metaphore."/>
</node>
<node CREATED="1507275752062" ID="ID_1330494467" MODIFIED="1507275794059" TEXT="So far, there are no containers on these 3 laptops. We must deploy them yet, which we will do in a minute, live."/>
<node CREATED="1507267288505" FOLDED="true" ID="ID_211520628" MODIFIED="1507276226533" TEXT="We installed Kubernetes on these 3 PCs">
<node CREATED="1507267315781" ID="ID_836697928" MODIFIED="1507267355957" TEXT="Kubernetes is the tool Google has been using since always to manage its 100.000 servers cluster"/>
<node CREATED="1507267356413" ID="ID_1389753358" MODIFIED="1507275850641" TEXT="It&apos;s apparent that with 100.000 servers to manage Google cannot afford to have engineers to set up and configure, manually, servers one by one, manually. They must have some high automation mechanism."/>
<node CREATED="1507267453573" ID="ID_115967973" MODIFIED="1507276085068" TEXT="We took the same approach. Although it was possible to setup things manually, we preferred to write a script to perform all the Ops task in an automatic fashion. In a minute we will set up and configure our Issuing Server cluster, on these 3 PCs, with no human intervention."/>
<node CREATED="1507267567755" ID="ID_229184801" MODIFIED="1507276047916" TEXT="Diagrams">
<node CREATED="1507267493435" ID="ID_1618764007" MODIFIED="1507276105764" TEXT="This is what we want to obtain. Show the old diagram."/>
<node CREATED="1507267509384" ID="ID_864586798" MODIFIED="1507276133986" TEXT="And since we are using containers, we want 2,3, 4 instances of the back end service running. And a load balancer to direct traffic (show the diagram with the load balancer)"/>
<node CREATED="1507267582275" ID="ID_1025907920" MODIFIED="1507276191256" TEXT="We also want a cluster of dbs. Let&apos;s ask for 3 nodes (show the final diagram).&#xa;[Hopefully the diagram should be complex enough to make it apparent that setting up such infrastructure must be a not simple task to be performed with the old, manual approach]"/>
</node>
<node CREATED="1507267644517" FOLDED="true" ID="ID_1204451218" MODIFIED="1507267966878" TEXT="Ok, starting from the empty servers, let&apos;s run the script we wrote to setup and configure the cluster, and to deploy the services">
<node CREATED="1507267621036" ID="ID_1659488496" MODIFIED="1507267712213" TEXT="Run the script and wait 15 seconds. The cluster will be up and running."/>
</node>
<node CREATED="1507267713439" FOLDED="true" ID="ID_1321250258" MODIFIED="1507276225604" TEXT="Dashboard">
<node CREATED="1507267721621" ID="ID_1869259474" MODIFIED="1507267733884" TEXT="From this dashboard we can control all the ecosystem"/>
<node CREATED="1507267734398" ID="ID_1804209546" MODIFIED="1507267752806" TEXT="Show that the frontend application is already up and running, with all the frames green"/>
<node CREATED="1507276204313" FOLDED="true" ID="ID_1275336171" MODIFIED="1507276225324" TEXT="Show on the dashboard the various sub systems.">
<node CREATED="1507267753608" FOLDED="true" ID="ID_197888711" MODIFIED="1507276224922" TEXT="See here that we are running 3 instances of the web service. Spinning up a new instance, that is, deploying a new web service, is a matter of a click">
<node CREATED="1507267807667" ID="ID_1349324391" MODIFIED="1507267824989" TEXT="click and show how to scale up the service"/>
<node CREATED="1507267848009" ID="ID_1219536373" MODIFIED="1507267961931" TEXT="Since every single task has been highly automatized, we could even monitor the real traffic and dynamically deploy new servers when we have spikes, and decommission them, to save money and resources, during the idle moments, for example during the night."/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1507212476519" FOLDED="true" ID="ID_81958304" MODIFIED="1507276231214" TEXT="New release">
<node CREATED="1507211972236" FOLDED="true" ID="ID_97258084" MODIFIED="1507276230925" TEXT="Show what happens when a new version is released">
<node CREATED="1507211977980" ID="ID_733530845" MODIFIED="1507211978923" TEXT="Ask the developer to make change a label in the back end service."/>
<node CREATED="1507222553837" ID="ID_1672654003" MODIFIED="1507222567340" TEXT="The developer says he produced a new container."/>
<node CREATED="1507222567810" ID="ID_864933808" MODIFIED="1507222592507" TEXT="The Ops says he&apos;s pushing the new container in the cloud."/>
<node CREATED="1507222625206" ID="ID_319897744" MODIFIED="1507222630418" TEXT="On the front end">
<node CREATED="1507211983135" ID="ID_149055492" MODIFIED="1507222634571" TEXT="Show that the front end application shows no downtime."/>
<node CREATED="1507222617979" ID="ID_1188212755" MODIFIED="1507222623594" TEXT="Also show that There&apos;s no downtime. Why?"/>
</node>
<node CREATED="1507222648152" ID="ID_533478655" MODIFIED="1507222649089" TEXT="Why">
<node CREATED="1507218533407" ID="ID_1352311583" MODIFIED="1507222652328" TEXT="Automation">
<node CREATED="1507222656181" ID="ID_1870696513" MODIFIED="1507222729902" TEXT="We automate everything. Literally everything, from setup to deployment, has been scripted, so that no human intervention was needed to get from the empty PC to the state the PCs are in this very moment."/>
</node>
<node CREATED="1507211989287" ID="ID_637059324" MODIFIED="1507222652327" TEXT="Immutability and Blue/Green deployment: explain how new versions are released"/>
</node>
<node CREATED="1507211994255" ID="ID_1029605698" MODIFIED="1507211995258" TEXT="Opportunities">
<node CREATED="1507211999426" ID="ID_1130372715" MODIFIED="1507212000346" TEXT="Rolling deployment"/>
<node CREATED="1507212004246" ID="ID_555899134" MODIFIED="1507212005162" TEXT="A/B testing"/>
<node CREATED="1507212008619" ID="ID_433076427" MODIFIED="1507212009537" TEXT="Immutability enables deterministic rollbacks"/>
</node>
</node>
</node>
<node CREATED="1507212481288" FOLDED="true" ID="ID_1151856385" MODIFIED="1507276235530" TEXT="High load">
<node CREATED="1507212014471" FOLDED="true" ID="ID_1968623431" MODIFIED="1507276235179" TEXT="Show what happens when the backend is hit by a huge load of requests">
<node CREATED="1507212020566" ID="ID_400868587" MODIFIED="1507212021393" TEXT="Asynchronous communication enables the high availability, since services are independent and authonomous"/>
<node CREATED="1507211860924" ID="ID_219391298" MODIFIED="1507211862478" TEXT="Should we mention bulk heads?"/>
<node CREATED="1507212025349" ID="ID_1212269924" MODIFIED="1507212026265" TEXT="Microservices are independently scalable: the most stressed service can be scaled up: show how."/>
</node>
</node>
<node CREATED="1507212485148" FOLDED="true" ID="ID_1921259158" MODIFIED="1507276241263" TEXT="Outage">
<node CREATED="1507211961050" FOLDED="true" ID="ID_1957998073" MODIFIED="1507276240858">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Show what happens when one of the servers has an outage
    </p>
  </body>
</html></richcontent>
<node CREATED="1507212045101" FOLDED="true" ID="ID_359501371" MODIFIED="1507267986302" TEXT="This means that the system is inherently resilient to outages: a part can fail without causing the failure of the whole system">
<node CREATED="1507212051269" ID="ID_1873775547" MODIFIED="1507212052496" TEXT="Resiliency is obtained with 2 strategies: ">
<node CREATED="1507212057380" ID="ID_1222908136" MODIFIED="1507212058560" TEXT="with Shared Nothing (services are independent from eachothers and don&apos;t rely on any shared resources, so they can survive xxxxxx) with r"/>
<node CREATED="1507212063180" ID="ID_689510" MODIFIED="1507212064072" TEXT="with a very high Redundancy: containers make redundancy easy; xxxx  ()deploy n more instances of the servie), so failures can be "/>
</node>
</node>
</node>
</node>
<node CREATED="1507212487984" ID="ID_1683741143" MODIFIED="1507212512169" TEXT="Final comment"/>
</node>
<node CREATED="1507212073920" FOLDED="true" ID="ID_1345274277" MODIFIED="1507276246256" POSITION="right" TEXT="Conclusion">
<node CREATED="1507212075316" FOLDED="true" ID="ID_954880536" MODIFIED="1507276245969">
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
</node>
<node CREATED="1507212101786" ID="ID_440372864" MODIFIED="1507212102670" TEXT="Risks, costs and challenges"/>
</node>
</node>
</map>
