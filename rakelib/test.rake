desc 'Start up irb with AXElements loaded'
task :console => :ext do
  irb = ENV['RUBY_VERSION'] ? 'irb' : 'macirb'
  sh "#{irb} -Ilib -rubygems -rax_elements"
end

desc 'Open the fixture app'
task :run_fixture => :fixture do
  sh 'open test/fixture/Release/AXElementsTester.app'
end

desc 'Build the test fixture'
task :fixture do
  sh 'cd test/AXElementsTester && xcodebuild'
end

desc 'Remove the built fixture app'
task :clobber_fixture do
  $stdout.puts 'rm -rf test/fixture'
  rm_rf 'test/fixture'
end
task :clobber => :clobber_fixture

namespace :test do
  desc 'Run sanity tests (basic, fast stuff)'
  task :sanity => [:ext, :fixture] do
    files = FileList['test/sanity/**/test_*.rb']
    sh "./test/runner #{files}"
  end

  desc 'Run integration tests (complex, slow stuff)'
  task :integration => [:ext, :fixture] do
    files = FileList['test/integration/**/test_*.rb']
    sh "./test/runner #{files}"
  end
end
