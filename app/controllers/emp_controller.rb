class EmpController < ApplicationController




  def index
    @header="The details of Emps"
    @emps=Emp.find(:all)


  end




  def delete
    @employee= Emp.find(params[:id])

    @employee.destroy

    flash[:notice] = 'User removed successfully'

    redirect_to :action => 'index'


  end


  def edit
     @qualification=Qualification.find(:all)
    if request.get?
      session['employer_id']=params[:id];
      @emp = Emp.find(:first, :conditions=>["id=#{params[:id]}"])
    end
    if request.post?
      @emp = Emp.find(:first, :conditions=>["id=#{session['employer_id']}"])
      unless @emp.blank?
        if @emp.update_attributes(params[:emp])

          redirect_to :controller=>'emp', :action=>'index'
        end
      end
    end
  end




  def new
    @header="Please add Emp"
    @qualification=Qualification.find(:all)

    if request.post?
      @emp_form=Emp.new(params[:emp])
       @emp_form.qualifications << Qualification.find(params[:people_ids])


      if @emp_form.save 
        flash[:notice] = 'User added successfully'

        redirect_to :action => 'index'

      else
        flash[:error] = 'Adding new user failed'
      end
    end
  end


end
