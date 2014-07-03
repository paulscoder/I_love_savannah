class MemoryMailer < ActionMailer::Base
  default from: "from@example.com"

  def memory_submitted(lover)
    @partner = lover.partner
  end
end
