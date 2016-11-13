# Swift na backendzie

---

# Co to Swift?

![inline](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Swift_logo.svg/853px-Swift_logo.svg.png)
 
> It’s designed to scale from ‘hello, world’ 
> to an entire operating system.

---

# Jest na Linuxa?

-

## Supported target platforms:
# *Ubuntu 14.04 or 15.10 (64-bit)*

-

> Note that nothing prevents Swift from being ported to other Linux distributions beyond the ones mentioned below.

---

# **[Po kiego jest na Linuxa?](https://www.thoughtworks.com/radar/techniques/bff-backend-for-frontends)**

^ trzy perspektywy: appla, mobilnych deweloperów i reszty świata
^ dla appla: 
^ * dog-fooding (oni mają dużo serwerów na linuxie), 
^ * polityczno-wizerunkowy (open source, otwarcie, edukacja) 
^ * wyjście z getta (objective-c było barierą dla ludzi piszących na ich platformę)
^ dla mobilnych:
^ * jeden język na kliencie i backendzie 
^ * backend for frontend pattern
^ dla reszty świata (touk)
^ * ciekawostka
^ * szansa na tanie gwiazdki na githubie
^ * mikroserwis można w tym napisać

---

# Co działa?

* kompilator + repl + debugger
* biblioteka standardowa
* core libraries
* package manager
* wrappowane C

```swift
UnsafeMutablePointer<Void>    UnsafePointer(a).memory
```

^ to się bardzo dynamicznie zmienia
^ biblioteka standardowa Swifta jest w większości
^ część pozostałych modułów z Foundation też jest
^ resztę sobie poszczególne biblioteki doklepują zaślepkami wrapującymi C

---

# Jak to zainstalować?

-

[https://swift.org/download/#linux](https://swift.org/download/#linux)

# *Docker:*

[swiftdocker](https://github.com/swiftdocker/docker-swift)

^ jak zainstalować swift na linuxie?

---

# Jak to uruchomić?


$ **swift**

```
Welcome to Apple Swift version 3.0-dev 
(LLVM b361b0fc05, Clang 11493b0f62, Swift 24a0c3de75). 
Type :help for assistance.
  1> 
  2> :q
```

$ **swift build**

^ pierwsza komenda do repla
^ druga komenda do budowanie projektu Swift Package Manager

---

# W emaksie mam to kodzić?

![inline](http://resources.jetbrains.com/assets/media/open-graph/clion_800x320.png)

Atom, vim, ...

^ nie jesteśmy zwierzętami
^ jest w eapie, ma plugin do swifta

---

# Do czego to podobne?

Scala 
-
Rust 
-
C++ 
-
Objective-C
-
**Kotlin**
-
.

---

# Co to ma?

* Optional: ? ! ??
* class, struct, enum, protocol
* `<A>`, typealias B
* let, var, mutating
* extensions
* closures, higher-order functions
* pattern matching

---

# Biblioteki jakieś to ma?

![inline](https://blog.testfort.com/wp-content/uploads/2012/07/ALPHA-BETA.png)

```
.Package(url: "", majorVersion: 0),
.Package(url: "", majorVersion: 0, minor: 0)
```

^ community przyjmuje odwrotne podejście niż apple
^ majorVersion: 0 we wszystkich zależnościach
^ a swift od razu był 1.0, a teraz niedługo 3.0 idzie
^ bardzo dużo nie działa na linuxie!
^ bardzo dużo często się rozwala, bo stack jest bardzo niestabilny

---

# Frameworki webowe?

# *[TAK!](https://github.com/matteocrippa/awesome-swift#webserver)*

[IBM kitura](https://developer.ibm.com/swift/products/kitura/)
[Perfect](http://perfect.org/)
[Zewo](http://www.zewo.io)
[Vapor](https://github.com/qutheory/vapor)
[Currasow](https://curassow.fuller.li/en/latest/) 
[Swifter](https://github.com/httpswift/swifter) 
[Express](https://github.com/crossroadlabs/Express)

---

# Dokumentacja?

## **[Swift programming language book](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/index.html)**

## **[Swift standard library reference](https://developer.apple.com/library/ios/documentation/General/Reference/SwiftStandardLibraryReference/index.html#//apple_ref/doc/uid/TP40014608)**

[developer.apple.com/swift/resources/](https://developer.apple.com/swift/resources/)

[swift-users mailing list](https://lists.swift.org/mailman/listinfo/swift-users)

[github](http://github.com)

---

# Jak to deployować?

![inline](http://blog.jetbrains.com/phpstorm/files/2015/10/large_v-trans.png)

^ docker is a must, bo wersje wariują
^ snapshot co tydzień, wszystko się wykrzacza

---

# Sprawdź sam!

-

## [https://github.com/siejkowski/SwiftForBackend.git](https://github.com/siejkowski/SwiftForBackend)

^ przykładowy stack: serwer http, klient http, połączenie z bazą





