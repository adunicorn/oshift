<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1507211492372" ID="ID_1554200275" MODIFIED="1507211504318" TEXT="Container Smart Day">
<node CREATED="1507211506197" FOLDED="true" ID="ID_1250106451" MODIFIED="1507212395638" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Presentation and overall goal
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1507211613091" FOLDED="true" ID="ID_584411252" MODIFIED="1507212394349" TEXT="What we wish to demonstrate with the demo">
<node CREATED="1507211626400" ID="ID_1981292099" MODIFIED="1507211638021" TEXT="We want to show how containers technology may be an interesting topic to investigate on. We will use a typical use case for our reality."/>
<node CREATED="1507211626406" FOLDED="true" ID="ID_480493702" MODIFIED="1507212393299" TEXT="Explain what the application does">
<node CREATED="1507211626407" ID="ID_60412904" MODIFIED="1507212296721" TEXT="The application is a simulator"/>
<node CREATED="1507212297765" ID="ID_1323440152" MODIFIED="1507212299089" TEXT="explain what the frames&apos; animations and colors mean."/>
<node CREATED="1507212303941" ID="ID_1168344644" MODIFIED="1507212328703" TEXT="Show an example, so that the audience gets used to the meaning of what&apos;s shown."/>
</node>
<node CREATED="1507211626408" FOLDED="true" ID="ID_1788251864" MODIFIED="1507212391392" TEXT="Explain we are using 3 ordinary -- and very old -- PCs, so the whole demo is a scaled simulation. ">
<node CREATED="1507211715457" ID="ID_1558033400" MODIFIED="1507212355166" TEXT="All effects will be scaled as well and made more visible by the slowness of systems at hand."/>
<node CREATED="1507211725104" ID="ID_1494671474" MODIFIED="1507212390188" TEXT="In the real world, we would have tens of thousands users, much more data, and a more powerful instrumentations; consequences in the real world would be faster, bigger and on a much broader scale."/>
</node>
</node>
</node>
<node CREATED="1507211512039" FOLDED="true" ID="ID_1003824162" MODIFIED="1507212712313" POSITION="right" TEXT="Monolithic solution">
<node CREATED="1507212435657" FOLDED="true" ID="ID_449898415" MODIFIED="1507212632224" TEXT="Presentation">
<node CREATED="1507211743990" ID="ID_336064635" MODIFIED="1507211777849" TEXT="Show a simplified diagram with the 3 components: a frontend (what&apos;s visible on the screen), a back end web service, a database."/>
</node>
<node CREATED="1507212443905" FOLDED="true" ID="ID_969196826" MODIFIED="1507212632461" TEXT="New release">
<node CREATED="1507211783698" FOLDED="true" ID="ID_1616836923" MODIFIED="1507212424146" TEXT="Show what happens when a new version is released">
<node CREATED="1507211789894" ID="ID_778185641" MODIFIED="1507211791121" TEXT="Ask the developer to change a label in the back end service and to release the new version"/>
<node CREATED="1507211796333" ID="ID_97096663" MODIFIED="1507211797352" TEXT="The developer asks the ops guy to setup a maintenance page, or to alert users that the front end application will experience a short down. "/>
<node CREATED="1507211811222" ID="ID_493569467" MODIFIED="1507211811945" TEXT="Also explain that this short down timeframe is very risky, for 2 reasons:">
<node CREATED="1507211816709" ID="ID_1087017082" MODIFIED="1507211817832" TEXT="should the deployment fail for any reasons, we would trying to recover the system while customers would be experiencing an outage"/>
<node CREATED="1507211822724" ID="ID_790486422" MODIFIED="1507211822724" TEXT="rollback would be just like an ordinary deployment, and that subject to the exact same risks as the deployment of a new version"/>
</node>
<node CREATED="1507211885842" ID="ID_684266320" MODIFIED="1507211887598" TEXT="Recap">
<node CREATED="1507211892418" ID="ID_1129026096" MODIFIED="1507211893477" TEXT="We saw how the system reacted to the deployment of a new version"/>
<node CREATED="1507211905403" ID="ID_987994472" MODIFIED="1507211906933" TEXT="We saw what happens when one subsystem is subjected to a very high load, and how the issues propagate to other sub systems, up to the customer."/>
<node CREATED="1507211912074" ID="ID_1806537325" MODIFIED="1507211913260" TEXT="Finally, we saw that the system is not resilient to the failure of a server."/>
</node>
</node>
</node>
<node CREATED="1507212447313" FOLDED="true" ID="ID_409655674" MODIFIED="1507212632691" TEXT="High load">
<node CREATED="1507211847135" FOLDED="true" ID="ID_1298881858" MODIFIED="1507212547302" TEXT="Show what happens when the backend is hit by a huge load of requests">
<node CREATED="1507211853780" ID="ID_1930830046" MODIFIED="1507211854830" TEXT="Explain, showing the diagram again, that sub systems are tightly coupled, and therefore issues on one side effect behaviours on another side. Issues propagate."/>
<node CREATED="1507211860924" ID="ID_219391298" MODIFIED="1507211862478" TEXT="Should we mention bulk heads?"/>
</node>
</node>
<node CREATED="1507212453812" FOLDED="true" ID="ID_428448140" MODIFIED="1507212633232" TEXT="Outage">
<node CREATED="1507211868996" FOLDED="true" ID="ID_222607640" MODIFIED="1507212545713" TEXT="Show what happens when one of the servers has an outage">
<node CREATED="1507211880602" ID="ID_1504062550" MODIFIED="1507211881701" TEXT="Plug out the cable wire of the server hosting the web service or the database. Show how the whole system fails."/>
<node CREATED="1507212539694" ID="ID_1263580920" MODIFIED="1507212544544" TEXT="Explain why"/>
</node>
</node>
<node CREATED="1507212493239" ID="ID_1450344336" MODIFIED="1507212505354" TEXT="Final comment"/>
</node>
<node CREATED="1507211532454" FOLDED="true" ID="ID_1569730562" MODIFIED="1507212712674" POSITION="right" TEXT="Containerized Microservices solution">
<node CREATED="1507212472408" FOLDED="true" ID="ID_1122686179" MODIFIED="1507212629893" TEXT="Presentation">
<node CREATED="1507211940744" ID="ID_189448945" MODIFIED="1507212572714" TEXT="Let&apos;s repeat the same: deployment, huge load, failure of a server.">
<node CREATED="1507211948641" ID="ID_73560495" MODIFIED="1507211949611" TEXT="We are using the same software components"/>
<node CREATED="1507211953976" ID="ID_885693854" MODIFIED="1507211954884" TEXT="Only, we distributed them in containers, designing the system according to a different architectural approach: microservices rather than monolithic."/>
<node CREATED="1507211959103" ID="ID_381334474" MODIFIED="1507211960020" TEXT="We are going to use the very same servers."/>
</node>
<node CREATED="1507212576237" ID="ID_863990449" MODIFIED="1507212621598" TEXT="Briefly explain what&apos;s a containerized Microservices Architecture"/>
</node>
<node CREATED="1507212476519" FOLDED="true" ID="ID_81958304" MODIFIED="1507212571518" TEXT="New release">
<node CREATED="1507211972236" FOLDED="true" ID="ID_97258084" MODIFIED="1507212570736" TEXT="Show what happens when a new version is released">
<node CREATED="1507211977980" ID="ID_733530845" MODIFIED="1507211978923" TEXT="Ask the developer to make change a label in the back end service."/>
<node CREATED="1507211983135" ID="ID_149055492" MODIFIED="1507211983986" TEXT="There&apos;s no downtime. Why?"/>
<node CREATED="1507211989287" ID="ID_637059324" MODIFIED="1507211989954" TEXT="Immutability and Blue/Green deployment: explain how new versions are released"/>
<node CREATED="1507211994255" ID="ID_1029605698" MODIFIED="1507211995258" TEXT="Opportunities">
<node CREATED="1507211999426" ID="ID_1130372715" MODIFIED="1507212000346" TEXT="Rolling deployment"/>
<node CREATED="1507212004246" ID="ID_555899134" MODIFIED="1507212005162" TEXT="A/B testing"/>
<node CREATED="1507212008619" ID="ID_433076427" MODIFIED="1507212009537" TEXT="Immutability enables deterministic rollbacks"/>
</node>
</node>
</node>
<node CREATED="1507212481288" FOLDED="true" ID="ID_1151856385" MODIFIED="1507212528178" TEXT="High load">
<node CREATED="1507212014471" ID="ID_1968623431" MODIFIED="1507212015561" TEXT="Show what happens when the backend is hit by a huge load of requests">
<node CREATED="1507212020566" ID="ID_400868587" MODIFIED="1507212021393" TEXT="Asynchronous communication enables the high availability, since services are independent and authonomous"/>
<node CREATED="1507212025349" ID="ID_1212269924" MODIFIED="1507212026265" TEXT="Microservices are independently scalable: the most stressed service can be scaled up: show how."/>
</node>
</node>
<node CREATED="1507212485148" FOLDED="true" ID="ID_1921259158" MODIFIED="1507212528792" TEXT="Outage">
<node CREATED="1507211961050" ID="ID_1957998073" MODIFIED="1507212039818">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Show what happens when one of the servers has an outage
    </p>
  </body>
</html></richcontent>
<node CREATED="1507212045101" ID="ID_359501371" MODIFIED="1507212046152" TEXT="This means that the system is inherently resilient to outages: a part can fail without causing the failure of the whole system">
<node CREATED="1507212051269" ID="ID_1873775547" MODIFIED="1507212052496" TEXT="Resiliency is obtained with 2 strategies: ">
<node CREATED="1507212057380" ID="ID_1222908136" MODIFIED="1507212058560" TEXT="with Shared Nothing (services are independent from eachothers and don&apos;t rely on any shared resources, so they can survive xxxxxx) with r"/>
<node CREATED="1507212063180" ID="ID_689510" MODIFIED="1507212064072" TEXT="with a very high Redundancy: containers make redundancy easy; xxxx  ()deploy n more instances of the servie), so failures can be "/>
</node>
</node>
</node>
</node>
<node CREATED="1507212487984" ID="ID_1683741143" MODIFIED="1507212512169" TEXT="Final comment"/>
</node>
<node CREATED="1507212073920" FOLDED="true" ID="ID_1345274277" MODIFIED="1507212108253" POSITION="right" TEXT="Conclusion">
<node CREATED="1507212075316" FOLDED="true" ID="ID_954880536" MODIFIED="1507212107293">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Advantages
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1507212093556" ID="ID_800298232" MODIFIED="1507212095030" TEXT="Explain that most everything showed would possible without containers (it would have been possible to decouple subsystems with an asynchronous queue, and to use more balanced service instances): containers just make it extremely easy, fast and cheap."/>
</node>
<node CREATED="1507212101786" ID="ID_440372864" MODIFIED="1507212102670" TEXT="Risks, costs and challenges"/>
</node>
</node>
</map>
