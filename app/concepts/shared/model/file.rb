module Shared::Model
  class File
    def self.call(ctx, params:, **)
      ctx[:model] = OpenStruct.new(file: params[:file])
    end
  end
end
