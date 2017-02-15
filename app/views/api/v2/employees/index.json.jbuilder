json.array! @employees.each do |employee|
 json.partial! "employee.json.jbuilder", employee: employee #this comes from the each loop
end
