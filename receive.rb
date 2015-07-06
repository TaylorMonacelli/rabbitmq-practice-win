#!/usr/bin/env ruby
# encoding: utf-8

<<-eos
Modified from here
https://github.com/rabbitmq/rabbitmq-tutorials/blob/master/ruby/receive.rb

eos


require "bunny"

conn = Bunny.new(:automatically_recover => false,
                 :user => 'taylor',
                 :password => 'taylor',
                 :host => '54.177.39.200')
conn.start

ch   = conn.create_channel
q    = ch.queue("hello")

begin
  puts " [*] Waiting for messages. To exit press CTRL+C"
  q.subscribe(:block => true) do |delivery_info, properties, body|
    puts " [x] Received #{body}"
  end
rescue Interrupt => _
  conn.close

  exit(0)
end
