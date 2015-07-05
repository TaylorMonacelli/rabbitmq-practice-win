receive.exe:
	cmd /c ocra rabbitmq-tutorials/ruby/receive.rb

send.exe:
	cmd /c ocra rabbitmq-tutorials/ruby/send.rb

test: rabbitmq-tutorials/ruby/send.rb
	ruby $<

rabbitmq-tutorials/ruby/send.rb:
	git submodule update --init --recursive

clean:
	rm -f send.exe
	rm -f receive.exe
