# frozen_string_literal: true

require "ofx"

RSpec::Matchers.define :have_key do |key|
  match do |hash|
    hash.respond_to?(:keys) &&
      hash.keys.is_a?(Array) &&
      hash.keys.include?(key)
  end
end

RSpec.configure do |c|
  c.filter_run_when_matching :focus
end
