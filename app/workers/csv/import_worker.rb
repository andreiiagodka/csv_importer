module Csv
  class ImportWorker
    include Sidekiq::Worker

    class_attribute :operation

    def perform(parser)
      parser.call
      parser.rows.each { |params| operation.call(params: params) }
    end
  end
end