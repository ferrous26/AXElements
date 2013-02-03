require 'simplecov-rcov'

SimpleCov.start do
  coverage_dir 'ci/coverage'

  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::RcovFormatter,
  ]

  add_filter 'test/'
  add_group 'Elements', 'lib/ax/'
  add_group 'Library', 'lib/accessibility/'
  add_group 'Hacks', 'lib/ax_elements/'
end
