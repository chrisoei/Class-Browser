class KlassController < ApplicationController
  def show
    @name = params[:name]
    if @name =~ /\A[a-zA-Z_:]+\z/
      @klass = eval(@name)
      if @klass.class == Module
        redirect_to modul_path(@name)
      end
    else
      raise "Illegal class name: #{@name}"
    end
  end
end
