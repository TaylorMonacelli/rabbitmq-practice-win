receive.exe:
	cmd /c ocra --no-dep-run receive.rb

send.exe:
	cmd /c ocra send.rb

test: send.rb
	ruby $<

clean:
	rm -f send.exe
	rm -f receive.exe
