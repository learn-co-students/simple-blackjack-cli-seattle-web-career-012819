require_relative "../lib/blackjack.rb"

RSpec.configure do |config|

    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")

    expect(self).to receive(:get_user_input).and_return("s")
end
