#SocketAndThread
__Skill Level:__ Intermediate  
__Time Limit:__ 1 hour   

This resource is a basic implementation of Ruby's Socket _class_ which provides access to your computers operation system socket functionality. The purpose of this exercise is to gain an understanding of how web servers and HTTP work on a basic level.

Sockets are endpoints of a bidirectional communication channel. Sockets can communicate within a process, between processes on the same machine or between different machines. To put it simply, they are a part of the plumbing system for web traffic and other protocols. 

##Instructions
Servers are permanent loops. They listen for incoming requests at a specific location (i.e. hostname/ip address). In our case, our server is listening on port 2000 of address 127.0.0.1.

- take a look at `server.rb`  
- comment out one of the commands executing a particular server implementation, run the file  
- open a different tab and run the `client.rb` file, did you receive a response from the server?    
- when you're done, fiddle around with `browser.rb` and run the file. what sort of response do you receive?  

__NOTE:__ You will have to use Ctrl-C to quit `server.rb` when done with this exercise.

##Resources
- [What is HTTP](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)  
- [What is localhost or 127.0.0.1?](https://en.wikipedia.org/wiki/Localhost)   
- [Why only port 80 for web services?](https://networkengineering.stackexchange.com/questions/1976/why-only-port-80-for-web-services)   
- [How Ruby app servers work](http://www.rubyraptor.org/how-we-made-raptor-up-to-4x-faster-than-unicorn-and-up-to-2x-faster-than-puma-torquebox/)   
