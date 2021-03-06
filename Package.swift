import PackageDescription

var package = Package(
    name: "MongoKitten",
    targets: [
        Target(name: "GeoJSON"),
        Target(name: "MongoSocket"),
        Target(name: "MongoKitten", dependencies: ["GeoJSON", "MongoSocket"])
        ],
    dependencies: [
        // For MongoDB Documents
        .Package(url: "https://github.com/OpenKitten/BSON.git", majorVersion: 4, minor: 1),

        // Authentication
        .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", Version(0,6,7)),
        
        // Provides sockets
        .Package(url: "https://github.com/IBM-Swift/BlueSSLService.git", majorVersion: 0, minor: 12),
        
        //
        .Package(url: "https://github.com/IBM-Swift/BlueCryptor.git", majorVersion:0, minor:8),

        // Logging
        .Package(url: "https://github.com/OpenKitten/LogKitten.git", majorVersion: 0, minor: 3),
    ]
)
