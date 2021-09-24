require 'hutch/logging'
require 'hutch/lib/base'

module Hutch
  module Acknowledgements
    class RetryOnce < Base
      include Logging

      def initialize
        @sleep_interval = ENV['HUTCH_RETRY_SLEEP_INTERVAL']&.to_f|| 0.2
      end

      def handle(delivery_info, properties, broker, ex)

        return false if delivery_info.redelivered?

        logger.debug "[Retry] Requeuing message #{properties.message_id}"

        sleep @sleep_interval

        broker.requeue delivery_info.delivery_tag

        true
      end
    end
  end
end
