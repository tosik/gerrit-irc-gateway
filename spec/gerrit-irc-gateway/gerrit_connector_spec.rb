require 'spec_helper'

describe Gerrit::Irc::Gateway::GerritConnector do

  let(:connector) { Gerrit::Irc::Gateway::GerritConnector.new }

  describe '#connect' do
    subject { connector.connect }
    it { should be_true }
  end

end