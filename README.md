This is an example of using Ruby 2.0 Tracepoint API to measure amount of ruby and C method calls using sinatra.

Inspired by [Mark Bates's](https://twitter.com/markbates) [rubyconf presentation on tracepoint](http://www.slideshare.net/markykang/mangling-ruby-withtracepoint). Derived from [his code in the same talk](https://gist.github.com/markbates/7403345). Thanks [Mark](http://metabates.com/).

Sinatra makes [4607](https://github.com/wallace/hello_world_sinatra/blob/master/sinatra_startup-webrick.out#L294) calls on during shutdown. (We start the tracing after Sinatra
is running.)

Sinatra makes [8982](https://github.com/wallace/hello_world_sinatra/blob/master/sinatra_startup_and_call-webrick.out#L891) calls for startup and response to one HTTP request via curl.

Therefore Sinatra makes 4375 method calls to process a request.
