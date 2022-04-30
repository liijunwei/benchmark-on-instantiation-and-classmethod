require_relative 'with_external_service'

task :start do
  Benchmark.bmbm do |b|
    b.report "no   instance and no external service" do

    end

    b.report "have instance and no external service" do

    end

    b.report "no   instance and have external service" do

    end

    b.report "have instance and have external service" do

    end
  end
end

task default: :start
