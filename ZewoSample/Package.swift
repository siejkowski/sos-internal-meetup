import PackageDescription

let package = Package(
    name: "ZewoSample",
    dependencies: [
        .Package(url: "https://github.com/VeniceX/HTTPServer.git", majorVersion: 0, minor: 13),
    ]
)
