1# Ciao Albert. Good morning everyone
2# Hi Brent
1# So, we planned the release of Adunicorn for next Monday.
1# Is everybody available? Lead developer?
2# Will be here
1# Nice. DBA?
2# Sure, booked.
1# What about the Network?
2# As well, covered
1# Great. <br>Please, Release Manager, do not schedule any other activity on Monday, we do need your total dedication.<br/>Ehm, what about SysAdmins?
2# Yeah, there we have an issue, Brent, as unfortunately, Anna, the SysAdmin of server SNTP101, is on vacation next Monday, she’ll be back the next week.
1# Ok. Can we replace her with someone else?
2# Well, yeah, maybe.. We could, yes, but, you know, the server SNTP101 is really unique and the SystemDynamics runs on it… 
1# SystemDynamics?
2# ... it's the core of Adunicorn and it was always Anna to work on SystemDynamics. Nobody else knows SystemDynamics better than her. I strongly suggest to wait for her to be back.
1# Ok, ok, got it. It’s better to postpone the deployment. Is it ok for everyone next Friday? 
2# Yes
1# Can I ask, why do we have such a strict coupling between SysAdmins and servers?
2# Well, when we provision servers, we use templates, of course, so they are born identical.  But since that moment, every configuration and deployment is handcrafted. Ops can login into servers and change their configuration, maybe perform tests with developers and rollback settings, perform some fine tuning and so on…. So, those two identical servers tend to diverge more and more over time. That’s what we call “Configuration shift”. We started with identical servers, but we end up with unique servers. So unique they are like snowflakes. hat’s why we really need Anna to be onboard. She’s the only one you can rely on to configure SNTP101 during deployments, because she knows such server better than her dog.
1# Bad luck, but that’s life. 
1# Ok, go on. An important recommendation: remember to freeze any possible activity, you know that a deployment is such a delicate and risky operation.
1# So, see you next Friday, 6 o’clock in the morning.
2# Why so early in the morning?
1# Yes, I know guys that waking up early is a pain in the neck, but developers told me that there will be a downtime during the deployment, and we really need to reduce the service disruption as much as possible, so we had to choose the early morning, when we have just few customers using our services. Later in the morning and in the afternoon we have hordes of customers and we cannot have downtimes.
2# Ok, got it. Brent, if we have a downtime we gotta have a Maintenance Page.
1# Nice catch, Albert, the maintenance page, we really must remember to alert our partner
2# Do you remember last year when they forgot to put the maintenance page on?
1# Yeah, such a bad gaffe. Ok, guys, see you next Friday. Keep going.
1# &nbsp;
1# <h1>Friday Morning</h1>
1#  
1# Hi Everyone, ‘morning.
2# Hi Brent. Sorry, I'm very busy... I'm right in the middle of the deployment.
1# Good. How much the downtime will last?
2# Few minutes yet, Brent, but it depends, we are performing all the operations manually. And of course, the deployment may even fail. Actually, we are struggling with the node SNTP123
1# Anna’s server?
2# So, that’s another one. He have 2 nodes for the web application, and one of them is really very slow, can’t figure out why. 
2# Do you remember, the configuration shift I told you? Who knows what’s wrong with that second node, there must be some weird difference..
2# Wait, let me se... Can’t understand, this shouldn’t happen… Damn..
1# Ok, calm down. Albert, can we remove the maintenance page?
2# No, not yet, the system is not so stable. Some pròcesses seem to be stuck…
1# .. and can you fix them, Albert?
2# I could investigate, maybe with the support of some developers now, it must be probably a bug.
2# We are under pressure now because  we are in the middle of a downtime, and time it running out...
1# Uhm… Can we rollback to the previous version?
2# Yes, of course, we can and we should. Keep in mind that the rollback is just like a new deployment. It may fail as well.
1# My gosh! Let's rollback and let's keep fingers crossed…
1# Is it working?
2# Yes, it worked. We are back to stability, and we can remove the maintenance page.
1# Nice. I propose to meet in the afternoon, and have a briefing. I’d love to discuss about what didn’t worked, and why it didn’t worked. I really wish we can improve this pròcess, it gives me every time a heart attack.
2# Yes, nice idea. Actually I got some proposals.
1# Friday Afternoon
1# Hi Albert!
2# Hi Brent.
2# I just had a chat with Luciano, the lead developer. He told me the system was running smoothly on his system.
1# Uhm, running smoothly on his system... “Works on my machine”.
1# So it was working on Luciano’s machine. Why wasn’t it working on productive servers?
2# Because you know, servers are snowflakes! Luciano run the system on the Devèlopment environment, I mean on some servers that are not perfectly identical to the productive ones.
1# This story again...
2# Yeah, it’s always the same old story: each single server is one-of-a-kind, it’s a singularity, 
1# and we have to work with a lot of singularities.
1# Ok, I understand it. But in the case of Luciano, what was the difference?
2# Hard to say…
2# Maybe he changed something in his configuration… or maybe it’s me that did a change that he didn’t replicate in the developers’ machines.
1# Don’t we have a log with all the modifications we make on servers?
2# We have some logs… But they are all manual operations, anyway… Even with those logs, it would be hard to compare or to re-execute them.
1# Ok, I can understand. It seems unavoidable.
2# Yes, it seems so.
1# Guys, since we are all together in the same room, can I talk you about another topic?
1# Next Friday will be the Black Friday
2# Wow, the Black Friday. We will have a lot of traffic, like last year.
2# Brent, Do we have an idea how much traffic will we have?
1# Yes, we have. We made some figures and we predict about 4 times the traffic we have today. This, for 2 days only.
1# Why this face, Albert, are you worried?
2# Yes, I’m a bit worried, of course! 4 times the traffic means we will need at least 2 more db servers. 
2# And that’s my gut feeling. May be more. May be even 3.
1# No problem, I will ask 3 more servers.
2# Uhm, that’s not so easy… The problem is servers are a bit hard to get.
2# You have to create them, to install the operating system, to make all the configurations…
1# … and you have no reference, because of the configuration shift…
2# Yes! Exactly! You have to create them from scratch, more or less copying from our snowflakes servers.
1# I got it. How much time for a server?
2# Days... may be weeks… In addiction, you need to test them, right after the creation.
1# So, not only is it a slow pròcess. It must also be expensive.
2# Yes, it is. It’s slow and expensive. 
2# But, sorry, you should have asked for those additional servers in time, Brent, maybe one month ago already.
1# Sorry, my fault.
2# Albert, do you think Anna will be able to build those servers in time anyway?
2# May be, I hope so.
2# The problem, Brent, is that you cannot scale the number of servers without increasing the number of people that take care of them. 
2# Say you want to increase the number of servers in the company from 10 to 100: you must have more System Administrators…
2# Each server consumes human time, and if you want to add servers, you must add employees… Wanna double your platform? Double your staff...
1# Yes, I understand. Can’t esccape from this law.
2# Yes, can’t escape.
2# Unless…
1# Unless what?
2# Unless, Brent… I told you I had a good proposal.
1# <h1>What if?<h1>
1# A proposal… Good, I’m ready. Tell me everything
2# Ok, Brent. I propose you a game.
2# Let’s say we had Immutability and Automation.
1# Immutability and Automation?
2# Yes. Immutability and Automation. Take an immutable server.
1# What do you mean with Immutable?
2#  Ok, let's from the beginning. Immutability is when you create something that cannot be changed anymore. For example, an immutable server is a server you put in your cloud, and which no one can change anymore, for any reason.
1# Doesn’t seem so useful.
2# It seems so, indeed, but bear with me.
2# Focus on that server. Imagine we obtained that server printing it out from a Master Copy.
1# Printing it out from a Master Copy?
2# Yes, Brent. Suppose you had a Master Copy of a server. 
2# Think of the Master Copy of the 1 Franc coin.
2# You we use it to print other coins: from the master copy of the 1 Franc, we can print millions Franc coins, each exactly equal to the others.
1# Ok, go on.
2# Equally, instead of the server SNTP101, we could have its Master Copy, and print SNTP101 from it. An immutable copy of SNTP101.
1# I can’t still see what the advantage is, honestly…
2# Oh, we could have a lot of advantages.
2# Tell me, Brent: would you like to have two copies of SNTP101: SNTP a, and SNTP b?
1# Both printed out from the same master copy?
2# Yes, both from it.
1# Ok, they would be identical, then, if I understand correctly
1# Uhm.. No configuration shift, you mean? Less surprises?
2# Absolutely. 
2# But there's more. If you could print servers on demand....
2# Think of Anna. You know that Anna is the Janitor of SNTP101: that sever is her personal pet.
2# If we could print 20 copies of the Master Copy, what would Anna’s task be?
1# I guess…. Working on the Master Copy, probably?
2# Exactly! If we had Immutability, it would be no sense to work on multiple identical copies. You would rather focus on their Master Copy.
2# Do you guess what this means? We would all focus on the only source of truth for a server…
1# Sure, without spending precious time replicating the configuration over and over, on each server.
2# Yes. We would work only once.
2# So, we could concentrate our effort on the root copy, rather than on all the replica.
2# Doing our job once, we could afford to set our quality standards to the highest limit.
2# Do once, do the best possible way.
1# What’s inside this Master Copy, Albert?
2# All that is needed to run our application. Network, configuration, the application itself…
1# So, when you say configuration, you mean network…
2# Everything.
1# Interesting. No differences between servers… And it means that our famous server SNTP101 would have nothing special, compared to its other brothers.
2# Yes, absolutely. Everything would be explicitly expressed in the Master Copy, for all the System Engineers to read and manage. Anyone who had worked on the Master Copy can manage anyone of its copy.
1# Wait wait, if SNTP101 is no special compared to the other copies, this could mean less dependency between a single system engineer and, how did you call it? a snowflake.
2# You said it, Brent.
2# Remember when before we discussed about how doubling the number of snowflake servers required doubling the human staff?
1# …Yes! And now I'm having the feeling that running twice the number of some identical, immutable copies… well, yes, it's different, it's easier, or at least, it's not the same, I got the message.
1# Amazing.
1# Still, I feel confused. How a deployment work with those immutable servers?
2# You prepare a server, spending all the time and effort you need to write, test and fine tune the needed configuration. 
2# And then you print one or more instances, and you let them run.
1# And they are immutable.
2# Yes, immutable.
1# Cannot work, sorry. We do need mutability, sooner or later. In 2 months we will be releasing a new version of Adunicorn. How can I deploy if I cannot change…
2# You don’t need to change the running servers! You have to change the Master Copy. Then you will print the new servers, configured with the new version. And you will let them run.
1# Uhm. What am I supposed to do with the old servers running the old version?
2# You can dispose of them, when you feel confident. It’s called Blue/Green Deployment. You never change the configuration of a server in production: you rather put a new server version side by side to the old one, and gracefully move the customers from the old version to the new one.
1# Wait wait, gracefully means what I imagine?
2# Yes, Brent: gracefully means without any downtime at all, if you want.
1# So, this is really exciting.
1# But be honest, Albert. Think of today. Today’s problem wasn’t caused by downtime, but by some weird problem Luciano didn’t detect in his environment.
2# You nailed it.
1# What do you mean?
2# "His environment"", you said. Who did prepare the devèlopment servers Luciano is using?
1# Some System Engineers did... then apparently Luciano changed some configuration, may be, then…
1# Wait, I understand... If we had a Master Copy Luciano could have used a server printed out from it.
2# And that server would have been identical to the one used in production.
1# Neat! So, Luciano and the other developers could have been developing the application on a perfect copy of the productive server, from the early stages, from the very first day...
2# Yes.
1# And what if Luciano needs to modify the server, to adapt its configuration to the application?
2# He could modify the Master Copy, together with Anna. So, any modification would be tracked there, and propagated to any replica copy from that moment on.
1# What about rollbacks?
2# Rollbacks are just deployment. What you have to do is to deploy the old servers with the old versions.
1# What if… No, I got it. They are immutable, they cannot have changed. If they used to work in the past, well, they are still exactly the same now, they must be working as before, if put in production again. After all, no one changed a single line in them.
1# Ok, so Immutability can solve each of our problems.
2# Immutability, plus Automation.
1# Yes, right, you told me about Automation. Tell me more about it.
2# Automation is the ability to print servers quickly. If nothing is done manually, if every single little step is automated, you could get a server running a program, and you could get it very very quickly.
1# How much?
2# In terms of seconds.
1# Really?
2# Absolutely serious. It's that quick. And very cheap too. Have a look.
2# That’s a master copy of RabbitMQ. I'm printing and running a server, ok? Get ready...
2# Done. Wanna have 3 more copies? Done.
2# Now, dispose of them. Let’s drop 2 servers.
2# Seen?
1# Impressing. If we could have this, the Black Friday wouldn’t be a problem at all. I could ask for 3 servers and I would get them in half a hour, probably…
2# Actually you could do much more. Everything is very automated, ok? And you can get a server in terms of seconds, with no human intervention at all. Right?
2# Suppose to get a little program that automatically creates new servers when the traffic increases, and discard of them when our customers are idle..
1# You mean, we could have a dynamic number of servers, depending on the number of requests?
2# Yes. For example, we could save money, and switch off half our structure during the night. Or have the infrastructure respond to unpredictable spikes.
1# How could System Engineers manage such a network, with so many moving parts?
2# They could start managing cattle rather than pets.
1# What do you mean?
2# I mean, we treat servers as they were pets. We give them names. 
1# It's true, we have SNTP101, there’s SNX10, and the like.
2# And servers have owners too. Take Anna, for example. She knows everything about her pet: when it has born, what's its health status, all it's little secrets.. She cares, it’s her pet, ok? She’s even jealous, and let no one take care of SNTP101. Remember, you even postponed a product release because Anna was in vacation.
1# I remember. And what's the other  approach to servers?
2# Think to farmers. They may easily have hundred or thousand of sheep. They don’t give them names. They manage them all together, as a cattle. They think in terms of "buying 20% more sheep", or "move half the sheep from here to there". If a sheep dies, they replace it. If two die, well, it’s a number. They are all identical. They manage them as a moltitude.
2# System engineers in many companies do the same. They focus on the Enterprise network health, not on the single SNTP101.
1# Like in Amazon, or Google?
2# Yes, and a lot of much smaller companies too. It's not about the amount of servers: it's about where you want to put your focus. Those companies focus more on their business capabilities than on the single servers. As we could do the same. We could use special software for orchestrating and managing our cattle of servers.
1# &nbsp;
1# <h1>Docker</h2>
1# Is any software for doing all of this already available on the market? I mean, what was the dashboard you showed me before, when you created and then destroyed some servers? Was it a prototype or what?
2# It was Docker, with Kubernets and OperShift.
1# Sorry?
2# You know, Brent, a lot of huge companies have been investing on this field, in the last years. I showed you Kubernetes, that is the orchestration tool written and used by Google. OpenShift is another one, by RedHat, and it is specially suited for Enterprises such as our company. All, for all of them, the basic building block is Docker. This is what really makes immutability and automation possible.
1# Albert, I'm not a technical person, but can you help me understand this Docker?
2# Say you run some programs in a server, ok?
1# Ok
2# In a server you can run tens or hundred of programs.
1# Sure. Of course, I must take care that they don't interfer one with the others in a bad way.
2# Exactly! If you run the server with Docker, Docker tricks each of those programs, and let it believe it is the only one existing in the server.
1# So, it isolates programs from eachothers?
2# Yes! It segregates a program in sort a of cage. And also, it allows to build and configure that cage, in a very detailed way, so that a cage can resemble a given server in all of its aspects, from network, to certifications, and so on. For example, we may build a cage that is identical to our SNTP101
1# Ok. So that Master Copy is the description of the server.
2# Of the server and the program running inside it!
1# Ok, both: the server and the program. Makes sense.
1# This makes me wonder: who is supposed to work on this Master Copy, then? The System Administrator, or the programmer?
2# Brent, you nailed it. This is probably the most important topic. Both.
1# Both? The System Administrator first, then the programmer?
2# No, both, together, since the beginning. It must be a collaborative endeavour. Devs and Ops, together.
1# Has it anything to do with this DevOps I heard about.
2# Absolutely. Dev and Ops. Or, if you think about it: Dev, Security and Ops. The so called DevSecOps.
1# Very pioneristic.
2# Not at all, indeed. It's a thing, already. A lot of companies adopted Docker and DevOps. It is just the modern school for IT companies.
2# But let me show what I did in my spare time, please.
2# Do you remember our Transaction Service?
1# The service our customers use to retrieve information about their credit card transactions?
