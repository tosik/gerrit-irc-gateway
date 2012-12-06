require 'net/ssh'
module Gerrit
  module Irc
    module Gateway

      class GerritConnector
        def configuration
          Hashie::Mash.new({
            host: 'host',
            port: 1234,
            username: 'user',
            password: 'pass',
            keys: '~/.ssh/id_rsa',
            passphrase: 'pass',
          })
        end

        delegate :host, :port, :username, :password, :keys, :passphrase, :to => :configuration

        def connection
          @connection
        end

        def connect
          @connection = if password
            Net::SSH.start(host, username, port: port, password: password)
          else
            Net::SSH.start(host, username, port: port, keys: keys, passphrase: passphrase)
          end
        end
      end

    end
  end
end
