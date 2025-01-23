# WayOfWorking::DecisionRecord::Madr

<!-- Way of Working: Main Badge Holder Start -->
![Way of Working Badge](https://img.shields.io/badge/Way_of_Working-v2.0.1-%238169e3?labelColor=black)
<!-- Way of Working: Additional Badge Holder Start -->
<!-- Way of Working: Badge Holder End -->

[![Gem Version](https://badge.fury.io/rb/way_of_working-decision_record-madr.svg)](https://badge.fury.io/rb/way_of_working-decision_record-madr)

This is a plugin for the [Way of Working](https://github.com/HealthDataInsight/way_of_working) framework. It uses [Markdown Any Decision Records (MADR)](https://adr.github.io/madr/) version 3.0.0 to capture key technical (e.g archtectural) and non-technical decisions within your repository.

You can read about the general approach to capturing decisions on the [GDS Way page on Architecture Decisions](https://gds-way.cloudapps.digital/standards/architecture-decisions.html) and specifics about MADR are available at <https://adr.github.io/madr/>.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add way_of_working-decision_record-madr
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install way_of_working-decision_record-madr
```

## Usage

To add the [Markdown Any Decision Records (MADR)](https://adr.github.io/madr/) v3.0.0 framework to your project, run the following at the command line:

```bash
way_of_working init decision_record
```

To create a new decision record, run:

```bash
way_of_working new decision_record [NAME]
```

Where `[NAME]` is the title of your decision record, for example:

```bash
way_of_working new decision_record "Use Markdown Any Decision Records"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/HealthDataInsight/way_of_working-decision_record-madr>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/HealthDataInsight/way_of_working-decision_record-madr/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WayOfWorking::DecisionRecord::Madr project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/HealthDataInsight/way_of_working-decision_record-madr/blob/main/CODE_OF_CONDUCT.md).
