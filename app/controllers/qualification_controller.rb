class QualificationController < ApplicationController

  def index
    @header='Qualification table'

    @qualifications=Qualification.find(:all)
  end

  def new
      if request.post?
      @qualification=Qualification.new(params[:qualification])
      if @qualification.save
#        flash[:notice] = 'User added successfully'

        redirect_to :action => 'index'

      else
#        flash[:error] = 'Adding new user failed'
      end
      end
      end

  def delete
    
  end
  
end
