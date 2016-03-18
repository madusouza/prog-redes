#!/usr/bin/ruby

require "twitter"

msg = ARGV[0]

class ZbxTwitter

        attr_accessor :mensagem

        def initialize(msg)
                @mensagem = msg
        end

        def cliente
                Twitter::REST::Client.new do |config|
                        config.consumer_key        = "XXX" #substituir pelas chaves/tokens criadas em apps.twitter.com
                        config.consumer_secret     = "XXX"
                        config.access_token        = "XXX"
                        config.access_token_secret = "XXX"
                end
        end

        def postar(mensagem)
                cliente.update(@mensagem)
        end
end

tweet = ZbxTwitter.new(msg)
tweet.postar(tweet)