# A project to test and compare the performance of various server-side technologies

A sample benchmark code using apache testing utils would be
```
ab -n 100 -c 100 localhost:3000/
```

## How to prepare the server to run the benchmarks
### Node.js
Go to the node folder and run
```node server.js```

### Ruby on Rails
Go to the RoR directory and run
```rails s -e production```
You should not omit the production env, otherwise your test will not be very good and you will get very slow response times.