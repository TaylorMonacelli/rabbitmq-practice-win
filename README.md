# rabbitmq-practice-win

netsh firewall set opmode mode=DISABLE profile=ALL
netsh firewall set opmode mode=DISABLE

open firwall for tcp 5672-5673

@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
rem this will install erlang and rabbitmq.  erlang is rabbitmq's dependency:
choco install rabbitmq -yes --forcex86
choco install sysinternals -yes
cd "c:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"


pathed -s -a "C:\Program Files\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"
pathed -s -a "C:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"

rabbitmqctl add_user taylor taylor
rabbitmqctl set_permissions -p / taylor ".*" ".*" ".*"
rabbitmqctl delete_user taylor taylor

rabbitmqctl add_user bob bob
rabbitmqctl set_permissions -p / bob ".*" ".*" ".*"
rabbitmqctl delete_user bob bob

rabbitmqctl add_user john john
rabbitmqctl set_permissions -p / john ".*" ".*" ".*"
rabbitmqctl delete_user john john

rabbitmqctl add_user paul paul
rabbitmqctl set_permissions -p / paul ".*" ".*" ".*"
rabbitmqctl delete_user paul paul





rem enable rabbitmq management console
pathed -s -a "C:\Program Files\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"
pathed -s -a "C:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"
rabbitmq-plugins enable rabbitmq_management
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

** ruby receive.rb 403 ACCESS_REFUSED

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

%APPDATA%\RabbitMQ


** rabbitmq access control

https://www.rabbitmq.com/access-control.html


"guest" user can only connect via localhost
By default, the guest user is prohibited from connecting to the broker remotely; it can only connect over a loopback interface (i.e. localhost). This applies both to AMQP and to any other protocols enabled via plugins. Any other users you create will not (by default) be restricted in this way.

This is configured via the loopback_users item in the configuration file.

If you wish to allow the guest user to connect from a remote host, you should set the loopback_users configuration item to []. A complete rabbitmq.config which does this would look like:

[{rabbit, [{loopback_users, []}]}].


**

https://www.rabbitmq.com/configure.html

RABBITMQ_CONFIG_FILE


If rabbitmq.config doesn't exist, it can be created manually. Set the
RABBITMQ_CONFIG_FILE environment variable if you change the
location. The Erlang runtime automatically appends the .config extension
to the value of this variable.


**

http://stackoverflow.com/questions/21018210/rabbitmq-inconsistent-cluster

{['rabbit@AMAZON-672471FC'],['rabbit@AMAZON-672471FC']}.

['rabbit@AMAZON-672471FC'],['rabbit@AMAZON-672471FC']

[
  {rabbit, [
    {cluster_nodes, {['rabbit@rmq01', 'rabbit@rmq02'], ram}},
    {tcp_listeners, [5674]}
  ]}
]


[
  {rabbit, [
    {cluster_nodes, {['rabbit@AMAZON-672471FC'],['rabbit@AMAZON-672471FC'], ram}},
    {loopback_users, []},
  ]}
]


rabbitmq cluster_nodes loopback_users


**

http://stackoverflow.com/a/25135706

First of all connect to your rabbitmq server machine using ssh client so
as to be able to run rabbitmqctl (like puTTY) & get into the sbin
directory of rabbit installation

you need to create a user for any vhost on that system (here I use default vhost "/")

rabbitmqctl add_user yourName yourPass

Set the permissions for that user for default vhost
$ rabbitmqctl set_permissions -p / yourName ".*" ".*" ".*"

Set the administrator tag for this user (to enable him access the management pluggin)
$ rabbitmqctl set_user_tags yourName administrator

... and you are ready to login to your rabbitmq management gui using
yourName and yourPass from any browser by pointing it to
http://"*********":15672 where ***** is your server IP hope it helps...

**

http://stackoverflow.com/questions/14699873/how-to-reset-user-for-rabbitmq-management

You can access the user-management with rabbitmqctl and use the command:

add_user {username} {password}
or more prefferably maybe edit an existing user, or set the permissions for the new user with:

set_permissions [-p vhostpath] {user} {conf} {write} {read}
For example use the following commands:

add_user newadmin s0m3p4ssw0rd
set_permissions new_admin ".*" ".*" ".*"
..to create a new administrator user with full access to the default / vhost.

You can find all this on the RabbitMQ homepage, and more specifically on this page

**

rabbitmqctl add_user taylor taylor
rabbitmqctl set_permissions -p / taylor ".*" ".*" ".*"

rabbitmqctl add_user yourName yourPass
rabbitmqctl


**

C:\Program Files\RabbitMQ Server\rabbitmq_server-3.5.3\sbin

pathed -a "C:\Program Files\RabbitMQ Server\rabbitmq_server-3.5.3\sbin"


** ACCESS_REFUSED - Login was refused using authentication mechanism PLAIN

If you get this:
E, [2015-07-05T17:04:32.046037 #2562] ERROR -- #<Bunny::Session:70135173653620 taylor@54.177.39.200:5672, vhost=/, hosts=[54.177.39.200]>: Authentication with RabbitMQ failed: 403 ACCESS_REFUSED - Login was refused using authentication mechanism PLAIN. For details see the broker logfile.

The do this:

rabbitmqctl add_user taylor taylor
rabbitmqctl set_permissions -p / taylor ".*" ".*" ".*"

*** log detail

[demo@demos-MacBook-Pro:~/pdev/rabbitmq-practice-win/rabbitmq-tutorials/ruby(master)]$ ruby receive.rb
E, [2015-07-05T17:04:32.046037 #2562] ERROR -- #<Bunny::Session:70135173653620 taylor@54.177.39.200:5672, vhost=/, hosts=[54.177.39.200]>: Authentication with RabbitMQ failed: 403 ACCESS_REFUSED - Login was refused using authentication mechanism PLAIN. For details see the broker logfile.
/Library/Ruby/Gems/2.0.0/gems/bunny-1.7.0/lib/bunny/session.rb:986:in `open_connection': Authentication with RabbitMQ failed. Please check your connection settings. Username: taylor, vhost: /, password length: 6 (Bunny::AuthenticationFailureError)
	from /Library/Ruby/Gems/2.0.0/gems/bunny-1.7.0/lib/bunny/session.rb:280:in `start'
	from receive.rb:10:in `<main>'
[demo@demos-MacBook-Pro:~/pdev/rabbitmq-practice-win/rabbitmq-tutorials/ruby(master)]$

** useful file paths

C:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.3\sbin
%appdata%\RabbitMQ\log
%appdata%\RabbitMQ\db\
C:\Documents and Settings\Administrator\Application Data\RabbitMQ\db\rabbit@AMAZON-672471FC-mnesia


C:\Program Files\RabbitMQ Server\rabbitmq_server-3.5.3\sbin
C:\Documents and Settings\Administrator\Application Data\RabbitMQ\log
C:\Documents and Settings\Administrator\Application Data\RabbitMQ\db\rabbit@AMAZON-672471FC-mnesia

This

If copy rabbitmq.config.example from here:
C:\Documents and Settings\Administrator\Application Data\RabbitMQ\rabbitmq.config.example

to here:
C:\Documents and Settings\Administrator\Application Data\RabbitMQ\rabbitmq.config

Then rabbitmq didn't use it.

**

https://github.com/rabbitmq/rabbitmq-tutorials.git



**

http://www.rabbitmq.com/tutorials/tutorial-six-ruby.html

ruby -rubygems rpc_client.rb
ruby -rubygems rpc_server.rb

