# shadow-cljs-openj9-test

This is a demonstration of ClojureScript compilation failing with shadow-cljs on the OpenJ9 JVM.

## How to run

### With Docker

Build Docker containers:

    ./build.sh

Run with OpenJ9 JVM:

    ./run-openj9.sh

### Locally

Switch to an OpenJ9 JVM and start the app:

    npm ci
    npm run start

## What should happen

Once the project has been compiled, the page will be available on [http://localhost:9500](http://localhost:9500).
It is possible that the app has been correctly compiled, no errors appear on the console and "Hello World" appears as intended.
In that case, run it again until errors appear. The compiled JS code from the Docker container will be found in `./build/openj9`.

There is also a HotSpot JVM available for comparison. Compilation should always succeed with it. The compiled JS code from the Docker container will be found in `./build/hotspot`.
