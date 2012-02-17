module ApplicationHelper
  def show_methods(obj, meth)
    if obj.class == Class
      inherited = obj.send(meth).sort
      added = obj.send(meth, false)
      inherited.inject("") do |r, x|
        if added.include? x
          r + " <b>" + link_to(x.to_s, meth_path(obj, x.to_s)) + "</b>"
        else
          r + " " + x.to_s
        end
      end
    else
      added = obj.send(meth, false)
      added.inject("") do |r, x|
        r + " <b>" + link_to(x.to_s, mmeth_path(obj, x.to_s)) + "</b>"
      end
    end
  end
end
