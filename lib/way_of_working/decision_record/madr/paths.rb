# frozen_string_literal: true

require 'pathname'

module WayOfWorking
  module DecisionRecord
    # Mixin that provides a couple of pathname convenience methods
    module Madr
      class << self
        def root
          Pathname.new(File.expand_path('../../../..', __dir__))
        end

        def source_root
          root.join('lib', 'way_of_working', 'decision_record', 'madr', 'templates')
        end
      end
    end
  end
end
