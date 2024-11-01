# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module DecisionRecord
    module Madr
      class ZeitwerkLoaderTest < Minitest::Test
        def setup
          @root = Pathname.new(File.expand_path('../../../..', __dir__))

          namespace = WayOfWorking::DecisionRecord
          @loader = Zeitwerk::Loader.new
          @loader.tag = "#{namespace.name}-madr.rb"
          @loader.inflector = Zeitwerk::GemInflector.new(@root.join('lib/way_of_working/decision_record/madr.rb'))
          @loader.push_dir(@root.join('test'))
          @loader.ignore(@root.join('test/test_helper.rb'))
          @loader.ignore(@root.join('test/way_of_working/audit_github_stub_classes.rb'))
          @loader.setup
        end

        def teardown
          @loader.unload
        end

        def test_eager_load
          @loader.eager_load(force: true)
        rescue Zeitwerk::NameError => e
          flunk "Eager loading failed with error: #{e.message}"
        else
          assert true
        end
      end
    end
  end
end