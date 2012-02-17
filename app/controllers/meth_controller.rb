class MethController < ApplicationController
  def show
    name = "#{params[:name]}##{params[:meth]}"
    @meth = Meth.find_or_create_by_name(name)
  end

  def update
    name = "#{params[:meth][:name]}"
    @meth = Meth.find_or_create_by_name(name)
    #@meth.description = params[:description]
    @meth.update_attributes(params[:meth])
    @meth.save!
 #   redirect_to klass_path(Object), :notice => 'Updated'
  end
end
