# frozen_string_literal: true

require 'way_of_working/audit/github/rules/base'

module WayOfWorking
  module DecisionRecord
    # The namespace for plugin
    module Madr
      # This rule checks for the MADR Decision Record template.
      class GithubAuditRule < ::WayOfWorking::Audit::Github::Rules::Base
        TEMPLATE_PATH = 'docs/decisions/adr-template.md'

        def validate
          @errors << 'No MADR Decision Record template found' unless decision_record_template?
        end

        private

        def decision_record_template?
          response = @client.contents(@repo_name, path: TEMPLATE_PATH)
          decoded_content = Base64.decode64(response.content)

          decoded_content == File.read(::WayOfWorking::DecisionRecord::Madr.source_root.join(TEMPLATE_PATH))
        rescue Octokit::NotFound
          false
        end
      end

      ::WayOfWorking::Audit::Github::Rules::Registry.register(
        GithubAuditRule, 'MADR Decision Records'
      )
    end
  end
end
