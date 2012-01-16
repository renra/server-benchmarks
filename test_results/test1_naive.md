A sample benchmark code using apache testing utils would be:

```
ab -n x -c y localhost:3000/
```

Where x is the number of requests sent and y is their concurrency. When you start all the server technologies at once, you will want to do so on different ports, then use these ports in the uri above for testing. You can find the port easily in the source code and edit it to your liking. You can choose whatever port you want unless it collides with a port in use. Also some lower port numbers require root privileges to be used.

## How to prepare the server to run the benchmarks

### Node.js
Go to the node folder and run:

```node server.js```

### Express
Express is a framework built on node.js so it is very similar. Go to the express folder and type:

```RAILS_ENV=production node app.js```

### Rack
Go to the rack folder and type:

```ruby server.rb```

### Sinatra
Go to ... you know where you have to go, right?

```ruby server.rb```

### Ruby on Rails
Go to the RoR directory and run:

```rails s -e production -p 3000```

You should not omit the production env, otherwise your test will not be very good and you will get very slow response times.

### Django
Go to django_app (django was not allowed as an application name) and run:

```./manage.py runserver 3000```


## The Contest
This little contest was done using lightweight development webservers that usually come with the frameworks(like WEBrick) which makes the results less valuable, but still good for comparison. The contestants will be sieged by this monster:

```ab -n 100 -c 10 localhost:3000/```

which means they have to serve 100 requests coming at them, 10 being concurrent(coming at the same time). I compare them by the mean value of the number of requests they can serve per second and by their response time. So let's see how these guys fare.

### The winner - Express
I think nobody is surprised to see node.js as the winning technology. What surprised me though was the fact that this framework actually performs slightly better that bare node.js. Still wondering why that is, but it's one more reason to use it.

Requests per second:    1512.45  
Time per request:       0.661 ms  

### Number 2 - Node.js
Requests per second:    1373.32  
Time per request:       0.728 ms  

### Number 3 - Rack
A simple rack server could be compared to the to a node.js server when it comes to complexity. Yet performs a little worse.  
Requests per second:    437.82  
Time per request:       2.284 ms  

### Number 4 - Sinatra
This framework is built on ruby just like simple Rack is, but here we see a significant performance drop. But that is expected.  
Requests per second:    169.91  
Time per request:       5.885 ms  

### Number 5 - Ruby on Rails
Right on the heels of sinatra:  
Requests per second:    149.04  
Time per request:       6.710 ms  

### Number 6 - Django
This python based framework surprised me the most. I was expecting it to be much faster.  
Requests per second:    76.00  
Time per request:       13.157 ms  

## Coming soon
- erlang
