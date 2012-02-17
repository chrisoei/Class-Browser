class KlassController < ApplicationController
  def show
    @name = params[:name]
    if @name =~ /\A[a-zA-Z_:]+\z/
      @klass = eval(@name)
    else
      raise "Illegal class name: #{@name}"
    end
  end
end
