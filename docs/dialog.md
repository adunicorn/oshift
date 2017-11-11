1# Ciao guys.
2# Hi Brent
1# So, next release of Adunicorn, next Monday, ok?
1# Everybody is in? Devs?
2# Ok
1# Network?
2# As well
1# Great. Ops?
2# There we have an issue. Anna, Ops of server SN101, is on vacation next Monday, she’ll be back the next week.
1# Ok. Can we replace her with someone else?
2# I'm not sure. It was always Anna to work on that server. No one else knows the server better than her. I suggest to wait her return.
1# Ok, got it. Let's postpone the deployment. Is it ok for everyone next Friday? 
2# Ok.
1# Why do we have such a coupling between people and servers?
2# We use templates to create servers, so they are identical. But since that moment, we do configuration by hand. Maybe we perform some tests with devs and we go back and forth with settings, and so on…. So, those two identical servers diverge with time. We call it “Configuration shift”. 
1# We start with identical servers, we end up with unique servers. 
2# Yes, unique like snowflakes. So, we really need Anna.
1# Ok, got it. See you next Friday, 6 o’clock in the morning.
2# Why so early?
1# I know, it sucks to wake up early, but during the deployment we have some downtimes. In the morning we have low traffic, in the afternoon the downtime would be more painful.
2# Ok, better safe than sorry.
1# Ok, guys, see you next Friday.
1# &nbsp;
1# <h1>Friday Morning</h1>
1#  
1# Hi everyone, ‘morning.
2# Hi Brent. Sorry, I'm very busy... I'm in the middle of the deployment.
1# Good. How long the downtime will last?
2# Few minutes still, I hope. It's all manual. I must be careful, the deployment may even fail. I'm struggling with the node SNTP123
1# Anna’s server?
2# No, another one. We have 2 db nodes, and one is really slow, can’t figure out why. 
2# Can’t understand why… Damn..
1# Ok, calm down. Can I remove the maintenance page?
2# No, not yet, the system is not stable. There must be a bug..
1# Can you fix it, Albert?
2# No, please, not in the middle of a downtime...
1# Uhm… Can we rollback to the previous version?
2# We can and we should. Keep in mind that the rollback is a deployment anyway. And may fail as well.
1# My gosh! Do it and fingers crossed…
2# Ok, it worked. Now we can remove the maintenance page.
1# Nice. Let's meet in the afternoon, and have a briefing. I’d love to discuss what didn’t work, and why. I really wish we can improve this pròcess.
2# Yes, nice idea. Actually I've got a proposal.
1# <h1>Friday Afternoon</h1>
2# Hi Brent. I just met Andy, the lead developer. He told me the system was ok on his machine.
1# So, why wasn’t it working in production?
2# Because Andy ran the system on the Dev environment, on servers different than production
1# Snowflakes... You got was the difference was?
2# No, it's hard to say…
2# Maybe he changed something… or maybe I did, and I forgot to replicate in his machines... It's not easy, everything is manual...
1# It seems unavoidable.
2# Yes, it seems so.
1# Guys, another topic.
1# Next Friday will be the Black Friday. We predict about 4 times the traffic.
1# Why this face, Albert, are you worried?
2# Yes, a bit . We will need at least 2 more db servers. Maybe 3.
1# No problem, I will ask for 3 more servers.
2# Uhm, that’s not so easy… Servers are a bit hard to get.
2# You have to create them, to install the operating system, to configure them…
2# You create them from scratch, copying from other snowflakes servers.
1# How much time for a server?
2# Days... may be weeks… Then, you need to test them...
1# So, not only slow, it's also expensive.
1# Ask Anna to build those 3 servers anyway.
2# Anna is really too busy. Each server consumes human time. Wanna double your platform? Double your staff...
1# Yes, I understand. Can’t escape from this law.
2# Well, you could escape if...
1# If?
2# I told you I had a proposal.
1# <h1>What if?<h1>
1# A proposal… Good, I’m ready. Tell me everything
2# Ok, Brent. Let's do a game.
2# Let’s say we had Immutability and Automation. Take an immutable server.
1# What do you mean with Immutable?
2# An immutable server is a server you put in your cloud, and no one can change anymore.
1# Not so useful.
2# It is, indeed. Suppose you obtained that server printing it out from a Master Copy.
1# Printing it out from a Master Copy?
2# Think of the Master Copy of the 1 Franc coin.
2# You use it to print other coins:, you print millions Franc coins from it, identical coins.
2# Take SN101, take its Master Copy, and print SN101 from it. An immutable copy of it.
1# What's benefit...
2# Oh, we could have a lot of benefits...
2# Tell me, Brent: would you like to have two copies of SN101?
1# Both printed out from the same master copy?
1# Ok, they would be identical, then...
1# Uhm.. No configuration shift...
2# But there's more. Think of Anna. If we could print 20 copies of SN101, what would Anna’s job?
1# It would be useless for her to work on 20 identical copies...
2# Correct! She would rather focus on the Master Copy.
2# If we all could focus on the single source of truth for a server...
1# ...without spending precious time replicating the configuration over and over, on each server.
2# ...we would work only once.
2# and we could concentrate our effort setting our quality standards to the highest limit.
2# Do once, at your best.
1# What’s inside this Master Copy?
2# Everything you need to run our application. Network, configuration, the application itself…
1# Interesting. No differences between server... So SN101 is no more one-of-a-kind.
2# Yes. Every configuration would be as simple as a text file, stored in the Master Copy, Any System Engineer who worked on the Master Copy can manage all of its copies.
1# Wait wait, so, no dependency between a single system engineer and a server?
1# And running twice the number of some identical, immutable copies it's easier then running snowflakes.
1# Still, I feel confused. How a deployment work with those immutable servers?
2# You prepare a server, you invest your time to write and test its configuration. 
2# Then you print one or more instances. And you run them.
1# But they are immutable. Cannot work, sorry. We do need mutability, sooner or later. In 2 months we will be releasing a new version of Adunicorn. How can I deploy if I cannot change…
2# You don’t need to change the servers! Change the Master Copy. Then print the new servers, with the new version. And let them run.
1# Uhm. What should I do with the old servers?
2# Dispose of them. It’s called Blue/Green Deployment. Never change the configuration of a server in production: rather, put new versions side by side to the old one, and gracefully move the customers from the old version to the new one.
1# Gracefully means without any downtime?
1# But today’s problem wasn’t caused by downtime, but by some bugs Andy didn't see in HIS environment.
2# You said it.
1# What do you mean?
2# "HIS environment". Who prepared Andy's servers?
1# Some System Engineers did... then he changed some configuration...
1# Oh, I understand... If he printed out his servers from a Master Copy.
2# They would be identical to the productive one.
1# Neat! So, developers could have been developing on pefect copies of production from the very first day...
2# Yes.
1# What if Andy needs to modify the server for his needs?
2# He could modify the Master Copy, together with Anna. So, any modification would be tracked there, and propagated to any replica copy.
1# What about rollbacks?
2# Rollbacks are just deployment. You deploy the servers with the old versions.
2# No one changed a single line in them.
1# You mean, if they used to work in the past, they must be working as before if put in production again. 
1# Ok, so Immutability is the solution.
2# Immutability, plus Automation.
1# Yes, right, you told me about Automation. Tell me more about it.
2# Automation is the ability to print servers quickly. If can automate everything. you could get a new server  very very quickly.
1# How much?
2# Just seconds.
1# Really?
2# Absolutely serious. It's that quick. And very cheap too. Have a look.
2# That’s a master copy of RabbitMQ. I'm printing and running a server, ok? Get ready...
2# Done. Wanna have 3 more copies? Done.
2# Now, dispose of them. Let’s drop 2 servers.
2# Seen?
1# Impressing. If we could have this, Black Friday wouldn’t be a problem, I could ask for 3 servers and get them in half a hour.
2# Actually you could do much more. Suppose to get a little program that creates new servers when the traffic increases, and discard of them when our customers are idle..
1# We could have a dynamic number of servers, depending on the number of requests.
2# Yes. We could save money, and switch off half our infrastructure during the night. Or respond to unpredictable spikes.
1# How could Ops manage such a network, with so many moving parts?
2# They must manage cattle rather than pets.
1# What do you mean?
2# I mean, we treat our servers as pets. We give them names. 
1# It's true, we have SN101, there’s SNX10
2# And they have owners too. Take Anna, for example. She knows everything about her pet: when it's born, its health, its little secrets.. She’s even jealous, and let no one take care of SN101. We even delayed a release because Anna was in vacation.
1# I remember. And what's the other  approach to servers?
2# Think of farmers. They easily have thousand of sheep. They don’t give them names. They manage them all together, as a cattle. They say "Let's buy 20% more sheep", or "move half the sheep from here to there". If 3 sheep dies, they replace them, it’s a number. They are all identical.
2# Ops in many companies do the same. They focus on the Enterprise network health, not on the single SN101.
1# Like in Amazon, or Google?
2# Yes, and a lot of much smaller companies too. It's not about the amount of servers: it's about where you want to put your focus. Business capabilities vs the single servers. We could do the same. We could use special software for orchestrating our cattle of servers.
1# &nbsp;
1# <h1>Docker</h2>
1# What was the dashboard you showed me before, was it a prototype?
2# It was Docker, with Kubernets and OperShift.
1# Sorry?
2# You know, Brent, a lot of huge companies have been investing on this field, in the last years. Kubernetes is the orchestration tool written and used by Google. OpenShift is by RedHat, and is specially suited for Enterprises like us. The basic building block is Docker which makes immutability and automation possible.
1# Albert, I'm not a technical person...
2# In a server you can run dozens, or hundreds of programs.
1# Sure. and I must take care that they don't interfer one with the others in a bad way.
2# Exactly! If you run the server with Docker, Docker tricks each of those programs, and let it believe it is the only one existing in the server.
1# So, it isolates programs from each others?
2# Yes! It segregates it in sort a of cage, a container. And it allows to build and configure that cage, in a very detailed way, so that a cage can resemble a given server in all of its aspects, from network, to certifications, and so on. For example, we may build a cage that is identical to our SN101
1# The Master Copy!
2# Yes
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
