require 'deep_thought'
require 'deep_thought-ci_service_plugin/ci_service/ci_service_plugin'

module DeepThought
  DeepThought::CIService.register_adapter('ci_service_plugin', DeepThought::CIService::CIServicePlugin)
end
