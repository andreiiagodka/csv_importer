module Csv
  class ImportWorker
    include Sidekiq::Worker

    class_attribute :csv_parser, :operation

    def perform(file)
      parser = csv_parser.new(file)
      parser.call
      parser.rows.each { |params| operation.call(params: params) }
    end
  end
end
