require 'csv'

module Csv
  class Parser
    class_attribute :headers

    attr_reader :rows

    def initialize(file)
      @file = file
      @rows = []
    end

    def call
      CSV.foreach(@file, col_sep: '¦') do |row|
        rows << headers.zip(row).to_h
      end
    end
  end
end