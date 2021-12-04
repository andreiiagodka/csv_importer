module Csv
  class Parser
    class_attribute :headers

    def initialize(file)
      @file = file
    end

    def call
      SmarterCSV.process(
        @file,
        {
          headers_in_file: false,
          user_provided_headers: headers,
          chunk_size: 1000,
          col_sep: '¦'
        }
      )
    end
  end
end
