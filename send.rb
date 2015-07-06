#!/usr/bin/env ruby
# encoding: utf-8

<<-eos
Modified from here
https://github.com/rabbitmq/rabbitmq-tutorials/blob/master/ruby/send.rb

eos

require "bunny"




conn = Bunny.new(:automatically_recover => false,
                 :user => 'taylor',
                 :password => 'taylor',
                 :host => '54.177.39.200')


conn.start

ch   = conn.create_channel
q    = ch.queue("hello")

ch.default_exchange.publish("Hello World!", :routing_key => q.name)
puts " [x] Sent 'Hello World!'"

conn.close
