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