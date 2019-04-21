#!/usr/bin/env ruby

require_relative 'secure_radio'

radio = SecureRadio.new
puts radio.status
radio.play
puts radio.hello