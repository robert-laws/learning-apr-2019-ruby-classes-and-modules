#!/usr/bin/env ruby

require_relative 'radio'
require_relative 'secure_radio'
require_relative 'shift_cipher'

radio = SecureRadio.new
puts radio.status
radio.play
