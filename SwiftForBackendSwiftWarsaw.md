#[fit] **swift-for-backend**
#[fit] **SNAPSHOT-2016-03**
### .tar.gz 

-
-
-
-

###[fit] by [Krzysztof Siejkowski](https://twitter.com/_siejkowski) ([siejkowski.net](https://siejkowski.net))

^ hello, my name is krzysztof and I'll tell you tonight about swift for backend

---

#[fit] **swift ❤️ linux**

![inline](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Swift_logo.svg/853px-Swift_logo.svg.png)![inline](pinguin.png)

^ since swift become open source, it's oficially supported on linux
^ what can we do about it?

---

<!-- intro -->
![fit original](https://i.imgflip.com/11lh7m.jpg)

^ we can write backends! yay!
^ let's assume everyone is excited and want to write some swift server right now!
^ what do we need to start?

---

# [fit] server! 
# [fit] framework!

## but which one?

## [https://github.com/matteocrippa/awesome-swift#network](https://github.com/matteocrippa/awesome-swift#network)

^ we need an http server, since our backend is going to serve some api
^ web framework would also be nice
^ there's a lot of frameworks, see the ever-changing incomplete list at awesome-swift repo on github
^ the list is long

---

## Kitura
### [github.com/IBM-Swift/Kitura](https://github.com/IBM-Swift/Kitura)

-

## Perfect
### [perfect.org](https://www.perfect.org)

-

## Vapor 
### [github.com/qutheory/vapor](https://github.com/qutheory/vapor)

^ let's look at what's available
^ here we have kitura, perfect, vapor
^ but there're more

---

## Zewo 
### [zewo.io](http://www.zewo.io)

-

## Currasow 
### [github.com/kylef/Curassow](https://github.com/kylef/Curassow) 

-

## Swifter 
### [github.com/httpswift/swifter](https://github.com/httpswift/swifter) 

^ there's also zewo, currasow, swifter
^ but there are even more

---

## Taylor 
### [github.com/izqui/Taylor](https://github.com/izqui/Taylor)

-

## Swifton 
### [github.com/necolt/Swifton](https://github.com/necolt/Swifton)

-

## Express 
### [swiftexpress.io](https://github.com/crossroadlabs/Express)

-

## Nest Project (Nest + Frank) 
### [github.com/nestproject](https://github.com/nestproject) 

^ there's taylor, swifton, express, nest
^ but the list is not over yet!

---

## blackfish 
### [github.com/elliottminns/blackfish](https://github.com/elliottminns/blackfish)

-

## Dynamo
### [github.com/johnno1962/Dynamo](https://github.com/johnno1962/Dynamo)

-

## Kunugi 
### [github.com/novi/Kunugi](https://github.com/novi/Kunugi)

-

## Trevi 
### [github.com/Trevi-Swift/Trevi](https://github.com/Trevi-Swift/Trevi)

^ we can also try blackfish, dynami, kunugi or trevi
^ there're probably some more
^ the first issue we need to face is: what to choose?
^ to make the choice easier, let's think of what type of app we want to develop

---

<!-- section1 I want to try Swift for backend --> 
# [fit] Hello World! 🎉

^ at the start we just want to get our feet wet. we'll build a very simple hello world app.
^ use Xcode on OSX for development 
^ let's use the default Swift version, which is 2.2 right now
^ run the server localy
^ have an easy set up
^ the last criterion: lots of github stars 🌟

---

![inline](perfect.jpeg)

# [fit] Perfect [perfect.org](https://www.perfect.org) 

^ as it happens, there's a project that seems to fit our needs
^ it's called perfect
^ one of the first swift web frameworks
^ let's use it

---

# how to set up?

1. Download Perfect
2. Create Xcode workspace
3. Add Perfect as subprojects
3. Setup targets (see [tutorial](http://code-me-dirty.blogspot.com/2016/02/creating-perfect-swift-server.html))
4. Run!

^ the setup is very similar to setting up any Xcode project
^ if you use carthage and are familiar with adding frameworks to your app, that's basically what happens
^ there's also a short tutorial
^ ok, so let's see perfect in action

---

# [fit] Hello world in Perfect demo

# [fit] code at [github.com/siejkowski/SwiftForBackend/tree/master/Hello](https://github.com/siejkowski/SwiftForBackend/tree/master/Hello) 

^ the Xcode project structure contains perfect dependencies
^ two endpoints: one just returns hello, second one returns hello with name from parameter
^ the actual html is served from mustache templates
^ perfect runs as a standalone app, our logic is linked to it
^ let's check if its working in the browser
^ let's see if debugger is working
^ let's see the tests
^ ok, so that was nice

---

# [fit] enterprise-ish and feature-rich...

^ what is perfect?
^ application server
^ session management
^ FastCGI and apache mod_perfect
^ can push notifications

---

# [fit] .. but not very swifty

^ no ORM, basic database connectors
^ no SPM support means no way to easily integrate with other libraries - because...
^ convoluted API (I've found no way to mix and match routes and page handlers in one project)

---

# recap

* yes we can!
* many libraries
* easy to try

^ 7-8 minutes
^ but, either way, it was a nice start!
^ we did write a simple http server in Swift, using Xcode, and it's simple
^ there is a lot of libraries to try and choose from
^ even if you don't have backend experience, it's easy to try with Xcode

---

<!-- section2 -->
# [fit] Slack bot! 🎉

^ Happy with hello world, now I want to do some other project
^ slack bot to simplify choosing the libraries
^ I need framework that has implemented websockets client (because that's what slack uses)
^ I need http client to get the information from github
^ I need to deploy my bot to Linux

---

![right original fit](https://raw.githubusercontent.com/Zewo/zewo.github.io/master/assets/images/logo-large%403x.png)

# [fit] **Zewo**  
# [fit] [zewo.io](http://zewo.io)

^ the only library I found that has websockets
^ also, very interesting project: very modular (more than 50 packages), a lot of functionalities

---

# Set up

1. Install `swift-DEVELOPMENT-SNAPSHOT-2016-02-08-a`
2. Install "Swift Command Line Application" template 
3. Create Xcode project with SPM folders and targets
4. Install Zewo dependencies 
5. Install zewodev 
6. Checkout & generate Zewo using zewodev 
7. Add Zewo to my Xcode project
8. RUN!

^ setup process via official tutorial
^ ok, so it looks like a lot of work, right?
^ there's one question that you might ask yourself at this point

---

![fit original](https://i.imgflip.com/11lkig.jpg)

^ why do we need all those steps?
^ there's a good reason
^ let's go step by step, because while this particular setup is applicable only to Zewo framework, it ilustrates a lot of problems that swift developers are facing right now

---

👉1. Install `swift-DEVELOPMENT-SNAPSHOT-2016-02-08-a`

# Swift?

-

# [fit] Which Swift?

-

# [https://swift.org/download/](https://swift.org/download/)

^ first of all, it's not enough that we need a swift
^ we need THE swift
^ there's a lot of swifts

---

# [fit] `swift-2.2-RELEASE`
# [fit] `swift-2.2-SNAPSHOT-2016-03-01-a`
# [fit] `swift-2.2.1-SNAPSHOT-2016-03-28-a`
# [fit] `swift-DEVELOPMENT-SNAPSHOT-2016-03-24-a`
# [fit] `swift-DEVELOPMENT-SNAPSHOT-2016-03-16-a`
# [fit] `swift-DEVELOPMENT-SNAPSHOT-2016-02-25-a`
# [fit] `swift-DEVELOPMENT-SNAPSHOT-2016-02-08-a`

^ does it matter? you bet it does!
^ swift is constantly changing and libraries are taking time to refactor and often you'll find yourself in a situation where a stable version of a particular framework works only with a particular swift version
^ fortunately, there's a sweet solution already available

---

# [fit] [swiftenv](https://github.com/kylef/swiftenv)

## Swift Version Manager 
## by Kyle Fuller

```bash
$ swiftenv install swift-DEVELOPMENT-SNAPSHOT-2016-02-08-a
$ swiftenv global DEVELOPMENT-SNAPSHOT-2016-02-08-a
```
^ essential tool in the swift backend developer toolbelt
^ command line application for managing swift versions
^ makes it easy to install new versions and also to switch between them
^ this explains the first step in setup process, let's go to the second one

---

👉2. Install template
👉3. Create Xcode / SPM project

# Swift Package Manager (aka SPM)

```swift
Package
├── Package.swift
├─────────────────────────────────────── Tests
└── Sources                             ├── LinuxMain.swift
    ├── Module1                         ├── Module1
    │   └── FileFromModule1.swift       │   └── TestForModule1.swift
    └── Module2                         └── Module2
        └── FileFromModule2.swift           └── TestForModule2.swift
```

^ what are we trying to achive? we try to make a project that has a valid structure for both Xcode and Swift Package Manager
^ why do we need SPM at all? we have cocoapods and carthage
^ reason1: SPM supports Linux
^ reason2: SPM is compatible with swift command line tools (build, test, clean etc.)
^ reason3: with SPM it's easy to share code between client and server - build separate package and add it as a dependency
^ The modules that swift build creates are determined from the filesystem layout of your source files. This is sample layout

---

# Package.swift

```swift
import PackageDescription
let package = Package(name: "Package",
    targets: [
        Target(name: "Package",
               dependencies: [ .Target(name: "Module1"),
                               .Target(name: "Module2") ]),
        Target(name: "Module1"),
        Target(name: "Module2"),
    ],
    dependencies: [
        .Package(url: "https://github.com/SwiftyLib/Lib.git", 
                 majorVersion: 0)
    ]
)
```

^ there's also another reason for SPM: easy modularization!
^ treat your app as package, treat the parts of app as targets (modules)
^ here you can see that my package consists of two modules, one is a dependency of the other
^ while this may not be used very often in iOS projects, for backend projects it helps with cleaner architecture
^ you can test each module separately 

---

👉2. Install "Swift Command Line Application" template
👉3. Create Xcode project with SPM folders and targets

# [fit] Xcode 💔 SPM

^ however, there's one big problem with SPM
^ SPM has basic Xcode support, because it can generate xcode projects
^ but Xcode has basically no SPM support
^ Xcode project structure is different from expected by SPM
^ Xcode doesn't keep the source layout
^ Xcode doesn't sync targets from Package.swift and to Package.swift
^ you need to keep two project structures in sync

---

👉5. Install zewodev 
👉6. Checkout & generate Zewo using zewodev
👉7. Add Zewo to my Xcode project

# [fit] Make Xcode ❤️ SPM

```bash
$ sudo gem install zewo-dev
```

^ because it leads to multiple problems, zewo authors has come up with a helper tool called zewodev
^ it checkouts Zewo packages and generates xcode projects for them, ready to be added to your app
^ this tool will hopefully soon be no longer needed, as SPM - Xcode integration will get better 
^ what's more in the setup?

---

👉4. Install Zewo dependencies 

# [fit] SPM wants to ❤️ C libraries

# [fit] and external dependencies

```bash
$ brew install zewo/tap/zewo
```

^ why? well. wouldn't it be great to just depend on swift foundation and core libs that're available on linux? it definitely would!
^ but a) foundation and core libs are largely `NSUnimplemented()`
^ and b) because there's a lot of functionality in the external dependencies, usually in the form of C libraries which expose headers. 
^ there're two ways of adding them: adding sources as dependencies or exposing C interfaces to Swift code with modulemaps
^ if you take the first option and want to compile from sources, then before `swift-DEVELOPMENT-SNAPSHOT-2016-03-16-a` SPM couldn't compile C code
^ work is already implemented in newest snapshot
^ is you use the second way and expose C interface to Swift, than you just need to install the C libraries from elsewhere, and zewo provides a brew formula for that
^ it will also change in the future, there's a proposal to allow SPM to integrate with external package managers as ubuntu `apt`

---

👉8. RUN!

^ the last step is to run our project, so let's see the short demo

---

# [fit] Slack bot in Zewo demo

# [fit] code at [github.com/siejkowski/SwiftForBackend/tree/master/Hackathon](https://github.com/siejkowski/SwiftForBackend/tree/master/Hackathon)


^ Zewo demo
^ project structure in xcode 
^ project structure in finder
^ starts with starting simple web server and with connecting to slack
^ functionality: it connects to slack via websocket
^ each time a message is sent, there's a callback 
^ if it's "sfb" message, it uses github client to ask for stars and posts them to slack
^ let's see how it's working
^ now, the good thing is it's working the same from command line via swift build
^ links all the libraries, then we start the app
^ bot goes live again, fetches github stars

---

# [fit] very modular

^ what is zewo?
^ over 50 packages
^ huge feature set
^ active development
^ huge slack community

---

# much swifty

![inline](epoch.png)

^ epoch is one of the Zewo projects
^ this was also my impression
^ but that doesn't mean you should use it too!
^ there's a lot of other options available

---

# How to deploy it?

# [fit] [docker](https://www.docker.com)

# heroku

^ as we have our project finished, we'd like to deploy it
^ there're two popular ways: using docker and using heroku
^ docker let's you deploy to any server that has docker available, heroku let's you deploy to heroku
^ generic docker images with swift for SPM based projects without external dependencies
^ generic swift build pack for SPM based projects without external dependencies
^ some projects provide their own docker images and heroku buildpacks
^ sometimes you need to write your own

---

# recap

* swiftenv
* SPM & modularity
* Xcode / SPM
* SPM / C libs
* Docker, Heroku

^ 24-27 minutes
^ ok, so that was a lot, let's recap
^ swift versioning - swiftenv is great for managing swift versions
^ SPM is a basic tool for keeping your project modular and usable by others
^ need for Xcode - SPM integration
^ there's also a need for a better integration between SPM and external depedencies
^ deployment can be done with docker and with heroku, depends on what library authors provide

---

<!-- section3 -->
# [fit] App backend! 🎉

^ happy with the slack bot, let's try to make a simple backend for an iOS app
^ what do we need?
^ can talk to a database (we want a crud backend)
^ ability to use multiple libraries from multiple sources is a must: when new requirement comes (like gzip or protocol change), we want to be able to make it
^ can be developed outside OSX (I want to deploy to Linux, so I guess it's better to develop on Linux as well?)

---

#[fit] **How many of you** 
#[fit] **use Mac**
#[fit] **for Swift** 
#[fit] **development?**

^ on the very note, I have a question for you:
^ how many of you use Mac for Swift development?
^ I'm so happy that this question makes sense. It hasn't made much only 4 months ago! but then we got our Christmas present, and there're already some options available for developing Swift on Linux

---

# JetBrains

# [fit] [CLion](https://www.jetbrains.com/clion/) 

# [fit] with Swift plugin

^ the best option in my opinion came from the well-known company called Jetbrains
^ the creators of AppCode and a huge number of other IDEs
^ it has released the Swift plugin for their Linux-compatible environment called CLion. it works quite nicely with SPM and although the support is comparable to AppCode support for Swift 
^ which means it's basic right now, we can assume it's gonna get better over time
^ now that we know where we're gonna develop, let's choose the library

---

# ~~Perfect: 6487~~

-

# Vapor: 3455 🌟

-

# Kitura: 2631 🌟

-

# Swifton: 1806 🌟

-

# Swifter: 1579 🌟

^ I've used the slack bot to determine which other libraries are most popular on github
^ of course it's not a best way of choosing library, you should make a research, but it'll do for what we need
^ two top candidates are Vapor and Kitura

---

![inline fit](http://qutheory.io/images/vapor-logo.png)

# [fit] [github.com/qutheory/vapor](https://github.com/qutheory/vapor)

^ vapor is a very interesting project in the server side swift landscape
^ it tries not to implement their own low level solutions, but to build on top of other providers: kitura, zewo, currasow
^ a vapor framework provides higher-level stuff, like routing or database connectors
^ we'll use the part of vapor called fluent, which an ORM (object-relation mapping) library inspired by active record. we'll use it for persistence

---

![inline fit](https://raw.githubusercontent.com/IBM-Swift/Kitura/develop/Documentation/KituraLogo-wide.png)

# [fit] [github.com/IBM-Swift/Kitura](https://github.com/IBM-Swift/Kitura)

^ for the low level stuff we're gonna use Kitura, which is developed by IBM
^ you can feel the wind of the enterprise, there's TM on the picture
^ Kitura's goal is to provide a framework for you to deploy web apps to bluemix, which is IBM cloud
^ however, it's also great to use separately!

---

![original fit](https://i.imgflip.com/11otlj.jpg)

^ we want to do a basic mix and match: take Kitura's http server and routing and use it alongside Vapor's database connection
^ what could possibly go wrong?

---

# [fit] what could 
# [fit] possibly
# [fit] go wrong?

^ actually, a lot can go wrong
^ why is this a case?
^ no way to specify the Swift version for the particular libraries you're working with, and as we've already seen, some libraries require particular Swift version
^ the burden of versioning is left on framework authors, which usually have very little incentive to support multiple versions

---

# [fit] 💥 package name conflict

# [fit] 💥 Swift version requirement

^ what are the example problems?
^ example problem1: kitura cannot use zewo's websockets, because both projects have their own versions of http-parser wrapper (which is an external dependency) named the same, and SPM cannot resolve the conflict
^ example problem2: kitura requires `03-01` snapshot, while vapor is on `03-24`. if you try to use older version of vapor (which was working with `03-01` snapshot), then vapor's dependencies do not compile, because they didn't provide version for `03-01`
^ effects:
^ a lot of time and energy is spent on configuration and build errors
^ a lot of functionalities is implemented independently by multiple people, including basic data types
^ are there any solutions?

---

# [fit] 👉 Swift / SPM maturity 

# [fit] 👉 Cross-project standards

# [fit] [SwiftX](https://github.com/SwiftX)

^ there are two solutions right now:
^ waiting as Swift matures and snapshots are more compatible with each other
^ providing an agreement between developers such that the libraries can be composed easier

---

# [fit] Backend in Kitura & Vapor demo

# [fit] code at [github.com/siejkowski/SwiftForBackend/tree/master/Prototype/Backend](https://github.com/siejkowski/SwiftForBackend/tree/master/Prototype/Backend)

^ client is as simple as possible: one screen, table view, api client
^ backend has routes the same as in api client
^ backend uses fluent api from vapor

---

# [fit] Full stack Swift 🚀

^ full stack swift is already possible for simple projects!
^ don't know about you, but for me it's huge!
^ there is already a huge number of functionalities available, including db connectors

---

# ~~Things missing~~ Opportunities 🎉

* utilities of all kind
* ports from other platforms
* architecture models (like actor model)
* monitoring tools
* SwiftJS ([ShiftJS](http://www.shiftjs.com))
* performance
* many more

^ however, there's also a lot missing
^ these are all opportunities for great projects

---

# recap

* development on Linux
* mix and match 💥
* full stack
* opportunities!

^ 36-38 minutes
^ you no longer need OS ten and Xcode to develop in Swift, there's a Linux IDE available
^ mix and match is still very difficult, there's a lot of work to be done by both Swift Package Manager and the community
^ a lot of functionality is available, basically a whole stack
^ the more people jumps on the swift for backend, the easier it gets!

---

<!-- outro -->
![fit original](https://i.imgflip.com/11lxcu.jpg)

^ the answer is: not yet, raptor, but soon
^ however, there's also another question: why should anyone care?
^ there's planty and planty of platforms: Rails, Django, Akka, Spring
^ one reason is it'll be easier for the iOS devs to write their backends themselves 
^ the another Parse kerfaful will be less probable
^ there's also another reason, but to explain it I need to first introduce you to the idea of Conway's law

---

# [fit] Conwey's law

-

> *organizations* which *design systems* (in the broad sense used here) are constrained to produce designs *which are copies of the communication structures of these organizations*
-- Melvin E. Conway, April, 1968

^ the example comes as follows: imagine you have two teams in your company. one team is doing the iOS app, the second team is doing the backend. the communication inside team is easier than between teams, so the system you'll develop will have a strong boundary between the client and server. which will lead to situation where the server team is changing something and the client app breaks, or where the client app wants to implement some feature and server makes it difficult to do, for example you need to send 3 separate requests to get information for one screen

---

# [fit] backend 
# for 
# [fit] frontend

diagram and further info at [samnewman.io/patterns/architectural/bff/](http://samnewman.io/patterns/architectural/bff/)

![original left fit](http://samnewman.io/pattern-img/bff/team-ownership.jpg)

^ to avoid those problems, there's a pattern developed by a company called thoughtworks: backend for frontend
^ the idea is that the client developers create and maintain their own small backend suited for their app
^ it makes the feature set and lifecycle of the backend controlled by the mobile devs
^ swift for backend will be ideal for that
^ so that's one more reason to try

---

# [fit] SNAPSHOT-2016-03

# [fit] *[obsolete tomorrow!](https://en.wikipedia.org/wiki/April_Fools%27_Day)*

# [fit] contact the community!

^ at the very end I'll just want to remind you that all I've talked about today is a snapshop
^ tomorrow April begins, so the snapshot will soon be obsolete ;):
^ things change quickly, but there's a lot of friendly people that'll help in case of troubles 
^ don't hesitate to use slack channels, gitchats and github issues!

---

# [fit] Thank you!

# [fit] Questions?

^ that's all, thank you much! 
^ any questions?
