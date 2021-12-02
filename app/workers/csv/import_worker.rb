module Csv
  class ImportWorker
    include Sidekiq::Worker

    class_attribute :operation

    def perform(rows)
      rows.each do |attributes|
        params = attributes.transform_keys(&:to_sym)
         
        operation.call(params: params)
      end
    end
  end
end
