class ModulController < ApplicationController
  def show
    @name = params[:name]
    if @name =~ /\A[a-zA-Z_:]+\z/
      @modul = eval(@name)
      if @modul.class == Class
        redirect_to klass_path(@name)
      end
    else
      raise "Illegal module name: #{@name}"
    end
  end
end
