class EmployeeController < ApplicationController
	def index
		p @employees = Eployee.all
		respond_to do |format|
			format.html
			format.json { render :json => @employees }
		end 
		#render json: Eployee.all
	end
	def create
		@emp = Eployee.new(emp_params) 
		respond_to do |format|
		  format.json do
            if @emp.save
            render :json => @emp
            else
            render :json => { :error => @emp.errrors.messages}, :status => 422
         	end
          end
	    end
	end
	def update
		@emp = Eployee.find(params[:id])
		respond_to do |format|
			format.json do
				if @emp.update(emp_params)
					render :json =>@emp
				else
					render :json => {errors: @emap.errors.messages}, status: 422

				end
			end
		end
	end
   private
   def emp_params
   	params.require(:employee).permit(:name,:email,:manager)
   end

end
