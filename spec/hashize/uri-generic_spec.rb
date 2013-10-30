require File.expand_path(File.join(File.dirname(__FILE__), '..','spec_helper'))
require 'hashize/uri-generic'

using Hashize::URI::Generic

describe Hashize::URI::Generic do
  describe "URI::HTTP instance object" do
    subject{ ::URI::parse('http://example.com/path/to/examples?foo=bar&fizz=buzz#A_HOGE') }
    it{ expect(subject.to_hash).to eq({
          fragment: 'A_HOGE',
          host:     'example.com',
          path:     '/path/to/examples',
          port:     80,
          query:    'foo=bar&fizz=buzz',
          scheme:   'http',
          userinfo: nil
        })
    }
    context "in Ruby 2.0.0" do
      it{ expect(subject.respond_to? :to_hash).to be_false }
      it{ expect{subject.send(:to_hash)}.to raise_error NoMethodError  }
    end
  end
end
