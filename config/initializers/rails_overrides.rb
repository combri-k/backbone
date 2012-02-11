class ActionDispatch::Request
  def action?(action)
    self["action"].eql?(action)
  end
end
