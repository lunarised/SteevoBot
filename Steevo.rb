#!/bin/ruby

require 'mastodon'

def get_status
  status = File.readlines("steevo.txt").sample.chomp
  return status
end

steevo = Mastodon::REST::Client.new(base_url: "https://heavensfeel.xyz", bearer_token: "YOUR TOKEN")
steevo.create_status(get_status)