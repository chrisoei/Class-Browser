class ModulController < ApplicationController
  def show
    @name = params[:name]
    if @name =~ /\A[a-zA-Z_:]+\z/
      @modul = eval(@name)
    else
      raise "Illegal module name: #{@name}"
    end
  end
end
