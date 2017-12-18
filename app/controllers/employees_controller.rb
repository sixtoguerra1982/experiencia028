class EmployeesController < ApplicationController

	def create
		@employee = Employee.new(employee_params)
		respond_to do |format|
	      	if @employee.save
	        	format.html { redirect_to @employee.company, notice: 'Product was successfully created.' }
	      	else
	        	format.html { render :new }
	      	end
      	end
   	end

	private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :area_id)
	end

end
