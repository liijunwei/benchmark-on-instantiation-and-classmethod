STRING_TO_HANDLE = ('a'..'z').to_a.join("")

def hard_work_without_ext
  10_000_000.times { STRING_TO_HANDLE.reverse }
end

class NoInstanceNoExt
  def self.perform
    hard_work_without_ext
  end
end

class HaveInstanceNoExt
  def self.perform
    new.perform
  end

  def perform
    hard_work_without_ext
  end
end
