# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module DecisionRecord
    class MadrTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::WayOfWorking::DecisionRecord::Madr::VERSION
      end
    end
  end
end
