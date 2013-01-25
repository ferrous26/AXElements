desc 'Run the flog task'
task :flog do
  require 'flog_task'
  FlogTask.new :flog_it, 9001 do |t| t.verbose = true end
  Rake::Task[:flog_it]
end

