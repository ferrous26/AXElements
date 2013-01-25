desc 'Compile and display flog metrics for lib/ and test/'
task :flog do
  require 'flog_task'
  FlogTask.new :flog_it, 9001 do |t| t.verbose = true end
  Rake::Task[:flog_it]
end

desc 'Generate documentation'
task :yard do
  sh 'yard'
end

