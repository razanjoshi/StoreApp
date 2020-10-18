# frozen_string_literal: true

require 'simplecov'

SimpleCov.minimum_coverage 65
SimpleCov.start 'rails' do
  add_filter '/bin/'
  add_filter '/channels/'
  add_filter '/config/'
  add_filter '/jobs/application_job.rb'
  add_filter '/spec/'
  add_filter '/vendor/'
end
