# Plot

## Overall goal
What we wish to demonstrate.

* We want to show how containers technology may be an interesting topic to investigate on. We will use a typical use case for our reality.
* **Application**: explain what the application does
  * The application is a simulator: explain what the frames' animations and colors mean. 
* Explain we are using 3 ordinary -- and very old -- PCs, so the whole demo is a scaled simulation. All effects will be scaled as well and made more visible y the slowness of systems at hand. In the real world, we would have tens of thousands users, much more data; consequences in the real world would be faster, bigger and on a much broader scale.

## Monolithic architecture

* Show a simplified diagram with the 3 components: a frontend (what's visible on the screen), a back end web service, a database.
* Show what happens when a new version is released
  * Ask the developer to change a label in the back end service and to release the new version
  * The developer asks the ops guy to setup a maintenance page, or to alert users that the front end application will experience a short down. 
    * Also explain that this short down timeframe is very risky, for 2 reasons:
      * should the deployment fail for any reasons, we would trying to recover the system while customers would be experiencing an outage
      * rollback would be just like an ordinary deployment, and that subject to the exact same risks as the deployment of a new version

* Show what happens when the backend is hit by a huge load of requests
  * Explain, showing the diagram again, that sub systems are tightly coupled, and therefore issues on one side effect behaviours on another side. Issues propagate.
** Should we mention bulk heads?

* Show what happens when one of the servers has an outage
  * Plug out the cable wire of the server hosting the web service or the database. Show how the whole system fails.

* Recap
  * We saw how the system reacted to the deployment of a new version
    * We saw what happens when one subsystem is subjected to a very high load, and how the issues propagate to other sub systems, up to the customer.
       * Finally, we saw that the system is not resilient to the failure of a server.

## Containerized microservices

* Let's repeat the same: deployment, huge load, failure of a server.
  * We are using the same software components
  * Only, we distributed them in containers, designing the system according to a different architectural approach: microservices rather than monolithic.
  * We are going to use the very same servers.

* Show what happens when a new version is released
  * Ask the developer to make change a label in the back end service.
  * There's no downtime. Why?
  * Immutability and Blue/Green deployment: explain how new versions are released
  * Opportunities
    * Rolling deployment
    * A/B testing
    * Immutability enables deterministic rollbacks

* Show what happens when the backend is hit by a huge load of requests
  * Asynchronous communication enables the high availability, since services are independent and authonomous
  * Microservices are independently scalable: the most stressed service can be scaled up: show how.

* Show what happens when one of the servers has an outage
  * This means that the system is inherently resilient to outages: a part can fail without causing the failure of the whole system
    * Resiliency is obtained with 2 strategies: 
       * with Shared Nothing (services are independent from eachothers and don't rely on any shared resources, so they can survive xxxxxx) with r
       * with a very high Redundancy: containers make redundancy easy; xxxx  ()deploy n more instances of the servie), so failures can be 


## Conclusion
* Advantages
  * Explain that most everything showed would possible without containers (it would have been possible to decouple subsystems with an asynchronous queue, and to use more balanced service instances): containers just make it extremely easy, fast and cheap.
  * Risks, costs and challenges
