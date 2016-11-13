// meta: stay low. be extra cautious no to say things that are not true and be extra brave to say "I don't know" when you don't know

jako programista iOS / macOS zainteresowany Swiftem na backendzie chcę:
* dowiedzieć się, jak zdeployować prosty projekt na heroku i na maszynę typu digital ocean droplet / linode
* dowiedzieć się, jakie biblioteki są dostępne, czym się różnią, którą wybrać
* poznać najprostszą drogę rozpoczęcia przygody z serwerowym swiftem, korzystając ze znanych mi już narzędzi (xcode, commandline swiftowy)
* zobaczyć sposób zapewnienia podstawowych funkcjonalności na backendzie: response z określonymi nagłówkami, crud, request do innego serwera i zwrócenie odpowiedzi, templating, gzipowanie, binary data
* dowiedzieć się, w jaki sposób można testować projekt
* dowiedzieć się, w jaki sposób można zarządzać wersjami swifta
* dowiedzieć się, w jaki sposób można debuggować projekt
* dowiedzieć się, na ile stabilna jest obecna konstrukcja
* dowiedzieć się, do jakiego typu projektów swift na backendzie się obecnie nadaje
* dowiedzieć się, czy można postawić backend do swojej własnej aplikacji ios na swifcie
* why using swift on the server is a good thing - if it's a good thing today or do I better hold off a bit - if it isn't: when can we expect it to mature and what is needed to achieve that; You can, but should you?
* dowiedzieć się, w jaki sposób współdzielić kod między serwerem a klientem
* dowiedzieć się na temat performance'u swifta na backendzie
* Let's see what tools are available, how they can be used and why Swift on server side might be a good idea, despite the early stage.

ideas:
* sample project
* how to build simple app X with: Kitura, Zewo, Vapor, Express...
* development from docker
* development environment for both OSX and Linux
* live coding
* what's Swifty is available right now for Linux and what's not?
* how to call the c libraries
* what are modulemaps and shims?
* how to manage swift environment (swiftenv, docker)
* why even bother with swift on backend?
* what libraries are available?
* can we mix and match the libraries?
* the build system: swift package manager, swift command line parameters
* when should we clear the build catalog?
* how to compile for debugger and for production?
* how to debug? which debugger to use?
* what is needed? (actor model: swifka) what kind of ecosystem? (tools! performance?)
* ci for swift? travis? (można wykorzystać cache do przyspieszenia budowania: https://docs.travis-ci.com/user/caching/) - działa dla linuxa
* swiftlint - czy działa dla linuxa?
* you want to develop and run on the same platform as it's going to be deployed, since many libraries are non-available or #if'ed on Linux

target:
osx / ios dev looking forward to try swift on backend
linux developer curios whow to start swift development



Do czego Swift na backendzie? 
* Backend for frontend 
* Best friends forever, bo to sposób na ogarnięcie podziałów serwer-klient wynikających z conwey's law 

What kinds of backends are there? 
* Rest APIs 
* other APIs 
* Binary, sync 
* server side rendering 

What each of those backends requires? 

What if those types is Swift usable for? 

What are typical competitors? 
* Django 
* Rails 
* Play, AkkaHTTP 
* Spring, Dropwizard 
* many, many more 

What do we need? 
* middleware system 
* package management / code reuse system 
* architecture models (like an actor model) 
* monitoring tools integration 
* database connectors 
* SwiftJS? 

What is available?
see https://github.com/matteocrippa/awesome-swift#network
* IBM kitura 
* Perfect 
* Vapor (https://github.com/qutheory/vapor)
* Currasow (https://github.com/kylef/Curassow) 
* Swifton (https://github.com/necolt/Swifton)
* Swifter (https://github.com/glock45/swifter) 
* Zewo (http://www.zewo.io)
* Express (https://github.com/crossroadlabs/Express)
* Taylor (https://github.com/izqui/Taylor) 
* Nest Project (https://github.com/NestProject) 
* blackfish (https://github.com/elliottminns/blackfish)
* Dynamo (https://github.com/johnno1962/DynamoLinux)
* Kunugi (https://github.com/novi/Kunugi)
* Trevi (https://github.com/Trevi-Swift)

Can be used from Docker. Should be used from Docker.

Tools: 
* CLion with Swift plugin
* any text editor
* Swift (swiftenv for version management)


