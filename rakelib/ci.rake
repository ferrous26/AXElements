desc 'Run flog on lib/ and report the results'
task :flog do
  sh 'flog -g lib/'
end

desc 'Generate documentation'
task :yard do
  sh 'yard'
end
