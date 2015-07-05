# rabbitmq-practice-win

choco install rabbitmq -yes --forcex86
cd "c:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"
cmd /c rabbitmq-plugins.bat enable rabbitmq_management


start http://localhost:15672
credentials: guest / guest



https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html



https://github.com/rabbitmq/rabbitmq-tutorials/blob/master/ruby/send.rb



https://github.com/rabbitmq/rabbitmq-server/blob/master/packaging/windows-exe/rabbitmq_nsi.in


https://lostechies.com/derekgreer/2012/03/05/rabbitmq-for-windows-introduction/



https://www.rabbitmq.com/management-cli.html
http://127.0.0.1:15672
http://localhost:15672
https://www.rabbitmq.com/install-windows.html
http://server-name:15672/cli/

cmd /c rabbitmq-plugins.bat enable rabbitmq_management
start http://localhost:15672

[Administrator@tl3:/c/Program Files (x86)/RabbitMQ Server/rabbitmq_server-3.5.3/sbin(master)]$ cmd /c rabbitmq-plugins.bat enable rabbitmq_management
The following plugins have been enabled:
  mochiweb
  webmachine
  rabbitmq_web_dispatch
  amqp_client
  rabbitmq_management_agent
  rabbitmq_management

Applying plugin configuration to rabbit@TL3... started 6 plugins.
[Administrator@tl3:/c/Program Files (x86)/RabbitMQ Server/rabbitmq_server-3.5.3/sbin(master)]$

cmd /c rabbitmq-plugins.bat enable rabbitmq_management

**

https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html

ruby -rubygems send.rb

ruby -rubygems receive.rb


** tcp 5672-5673

** rabbitmq on windows 2003

rabbitmq on windows 2003

54.177.39.200


**

conn = Bunny.new(:host => "localhost", :vhost => "myapp.production", :user => "bunny", :password => "t0ps3kret")
conn.start

http://rubybunny.info/articles/connecting.html


**

[demo@demos-MacBook-Pro:~/pdev/rabbitmq-practice-win/rabbitmq-tutorials/ruby(master)]$ ruby receive.rb
ruby receive.rb
E, [2015-07-05T15:54:23.950355 #97381] ERROR -- #<Bunny::Session:70119599007360 guest@54.177.39.200:5672, vhost=/, hosts=[54.177.39.200]>: Authentication with RabbitMQ failed: 403 ACCESS_REFUSED - Login was refused using authentication mechanism PLAIN. For details see the broker logfile.
/Library/Ruby/Gems/2.0.0/gems/bunny-1.7.0/lib/bunny/session.rb:986:in `open_connection': Authentication with RabbitMQ failed. Please check your connection settings. Username: guest, vhost: /, password length: 5 (Bunny::AuthenticationFailureError)
	from /Library/Ruby/Gems/2.0.0/gems/bunny-1.7.0/lib/bunny/session.rb:280:in `start'
	from receive.rb:7:in `<main>'
[demo@demos-MacBook-Pro:~/pdev/rabbitmq-practice-win/rabbitmq-tutorials/ruby(master)]$

**

http://www.rabbitmq.com/configure.html

Location of rabbitmq.config and rabbitmq-env.conf
The location of these files is distribution-specific. By default, they are not created, but expect to be located in the following places on each platform:

Generic UNIX - $RABBITMQ_HOME/etc/rabbitmq/
Debian - /etc/rabbitmq/
RPM - /etc/rabbitmq/
Mac OS X (Homebrew) - ${install_prefix}/etc/rabbitmq/, the Homebrew prefix is usually /usr/local
Windows - %APPDATA%\RabbitMQ\


** rabbitmq access control

https://www.rabbitmq.com/access-control.html
