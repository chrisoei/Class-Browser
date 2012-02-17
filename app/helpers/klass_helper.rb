module KlassHelper
  def show_ancestors(klass)
    klass.ancestors.inject('') do |r, x|
      if x.class == Class
          r + ' ' + link_to(x.to_s, klass_path(x))
      elsif x.class == Module
          r + ' ' + link_to(x.to_s, modul_path(x))
      else
          raise "Unknown ancestor type: " + x.class.to_s
      end
    end
  end
end
