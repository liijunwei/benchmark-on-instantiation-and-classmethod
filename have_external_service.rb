REDIS_CLI = Redis.new

# redis-cli monitor

def hard_work_with_ext
  10_000.times do
    REDIS_CLI.ping
  end
end

class NoInstanceHaveExt
  def self.perform
    hard_work_with_ext
  end
end

class HaveInstanceHaveExt
  def self.perform
    new.perform
  end

  def perform
    hard_work_with_ext
  end
end
