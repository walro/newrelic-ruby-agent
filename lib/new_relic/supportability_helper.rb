# encoding: utf-8
# This file is distributed under New Relic's license terms.
# See https://github.com/newrelic/rpm/blob/master/LICENSE for complete details.

module NewRelic
  module SupportabilityHelper
    def record_supportability_metric(agent, method_name)
      return if agent.nil?

      agent.stats_engine.tl_record_unscoped_metrics("Supportability/API/#{method_name}") do |stats|
        stats.increment_count
      end
    end
  end
end