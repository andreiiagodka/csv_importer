module Csv
  class ImportWorker
    include Sidekiq::Worker

    class_attribute :operation

    def perform(chunks)
      ActiveRecord::Base.transaction do
        Parallel.each(chunks) { |chunk| create_records(chunk) }
      end
    end

    private

    def create_records(chunk)
      chunk.each do |attributes|
        params = attributes.transform_keys(&:to_sym)

        operation.call(params: params)
      end
    end
  end
end
