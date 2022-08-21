class Client
  def self.call_iex
    Request.call
  end

  def self.get_quote(sym)
    Request.call.quote(sym)
  end
end
