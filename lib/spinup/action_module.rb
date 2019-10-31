class ActionModule
  attr_reader :name
  attr_reader :mw

  def initialize(name, mw)
    @name = name
    @mw = mw
  end

  def official_only?
    false
  end
end
