# A project to test and compare the performance of various server-side technologies

A sample benchmark code using apache testing utils would be:

```
ab -n x -c y localhost:3000/
```

Where x is the number of requests sent and y is their concurrency. When you start all the server technologies at once, you will want to do so on different ports, then use these ports in the uri above for testing. You can find the port easily in the source code and edit it to your liking.

## How to prepare the server to run the benchmarks

### Node.js
Go to the node folder and run:

```node server.js```

### Express
Express is a framework built on node.js so it is very similar. Go to the  express folder and type:

```node app.js```

### Rack
Go to the rack folder and type:

```ruby server.rb```

### Sinatra
Go to ... you know whwre you have to go, right?

```ruby server.rb```

### Ruby on Rails
Go to the RoR directory and run:

```rails s -e production -p 3001```

You should not omit the production env, otherwise your test will not be very good and you will get very slow response times. You can choose whatever port you want unless it collides with a port in use.

## Coming soon
- erlang
- rack
- django
