require 'open-uri'
require 'nokogiri'
require_relative "./covid_case_comparer/version"
require_relative "./covid_case_comparer/cli"
require_relative "./covid_case_comparer/california"
require_relative "./covid_case_comparer/ontario"
require 'pry'

module CovidCaseComparer
  class Error < StandardError; end
  # Your code goes here...
end
