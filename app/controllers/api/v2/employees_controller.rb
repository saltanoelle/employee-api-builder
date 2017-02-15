class Api::V2::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end
  def show
    @employee = Employee.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      # birthday: params[:birthday],
      email: params[:email]
      # ssn: params[:ssn]
      )
    render 'show.json.jbuilder'
  end
  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.update(
      first_name: params[:first_name] || @employee.first_name, #(bypassing all info)
      last_name: params[:last_name] || @employee.last_name,
      birthday: params[:birthday] || @employee.birthday,
      email: params[:email] || @employee.email,
      ssn: params[:ssn] || @employee.ssn
      )
    render 'show.json.jbuilder'
  end
  def destroy
    employee = Employee.find_by(id: params[:id])
    employee.destroy
    render json: { message: "Employee successfully destroyed!" }
  end
end
