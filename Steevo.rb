#!/bin/ruby

require 'mastodon'

def get_status
  status = File.readlines("steevo.txt").sample.chomp
  return status
end

steevo = Mastodon::REST::Client.new(base_url: "https://heavensfeel.xyz", bearer_token: "OMssuyKS9tuEQdqvnyAdSiywqrGj1pHSS9U8rCZJHPE")
steevo.create_status(get_status)