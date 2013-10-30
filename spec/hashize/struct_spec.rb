require File.expand_path(File.join(File.dirname(__FILE__), '..','spec_helper'))
require 'hashize/struct'

using Hashize::Struct

describe Hashize::Struct do
  describe "" do
    before(:all){ Hoge = Struct.new(:fizz, :buzz) }
    subject{ Hoge.new('FIZZ', 'BUZZ') }
    it{ expect(subject.to_hash).to eq({
          fizz: 'FIZZ',
          buzz: 'BUZZ'
        })
      }
    context "in Ruby 2.0.0" do
      it{ expect(subject.respond_to? :to_hash).to be_false }
      it{ expect{subject.send(:to_hash)}.to raise_error NoMethodError  }
    end
  end
end
