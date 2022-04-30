require 'redis'
require 'benchmark'

require_relative 'have_external_service'
require_relative 'no_external_service'

task :start do
  Benchmark.bmbm do |b|
    b.report "no   instance and no   external service" do
      NoInstanceNoExt.perform
    end

    b.report "have instance and no   external service" do
      HaveInstanceNoExt.perform
    end

    b.report "no   instance and have external service" do
      NoInstanceHaveExt.perform
    end

    b.report "have instance and have external service" do
      HaveInstanceHaveExt.perform
    end
  end
end

task default: :start
