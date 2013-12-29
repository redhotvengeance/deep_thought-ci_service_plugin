require 'deep_thought/ci_service/ci_service'

module DeepThought
  module CIService
    class CIServicePlugin < DeepThought::CIService::CIService
      def is_branch_green?(app, branch, hash)
        # ping CI service and return true if green or false if failed
      end
    end
  end
end
