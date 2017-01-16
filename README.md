# swift-docker
basic ubuntu docker with Swift 3

To build run 

```
docker build -t <tag>:<version> .
```

To run: 

```
docker run -it --privileged <tag>:<version>
```

#### Note: you need --privilged flag to run the Swift repl, as the repl requires lower leve access than docker will normaly allow.
