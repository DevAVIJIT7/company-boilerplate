# create company
company = Company.create(
  name: "Company 1", 
  address: "South 24 pgs, Kolkata, India", 
  business_code: "CP1"
)

# create departments
d1 = company.departments.create!(name: "Dept 1")
d2 = company.departments.create!(name: "Dept 2")

# create department locations
d1.department_locations.create(location: "Behala")
d2.department_locations.create(location: "Taratola")

# create employees for Dept 1
e1 = d1.employees.create(
  first_name: "Emp1", 
  last_name: "ck1", 
  birth_date: Date.today,
  address: "13/A Jagad bose road, Kolkata-700056",
  sex: "M",
  salary: 12000.56
)

e2 = d1.employees.create(
  first_name: "Emp2", 
  last_name: "cm1", 
  birth_date: Date.today,
  address: "16/A Jagad bose road, Kolkata-700056",
  sex: "M",
  salary: 3000.42,
  super_ssn: e1.id
)

e3 = d1.employees.create(
  first_name: "Emp3", 
  last_name: "cn1", 
  birth_date: Date.today,
  address: "17/A Jagad bose road, Kolkata-700056",
  sex: "M",
  salary: 4000.42,
  super_ssn: e1.id
)

# create employees for Dept 2
e4 = d2.employees.create(
  first_name: "Emp1", 
  last_name: "ck2", 
  birth_date: Date.today,
  address: "13/A Mohini kunj, Bela colony, Kolkata-700126",
  sex: "M",
  salary: 22000.94
)

e5 = d2.employees.create(
  first_name: "Emp2", 
  last_name: "cm2", 
  birth_date: Date.today,
  address: "13/A Mohini kunj, Bela colony, Kolkata-700126",
  sex: "M",
  salary: 6000.30,
  super_ssn: e4.id
)

e6 = d2.employees.create(
  first_name: "Emp3", 
  last_name: "cn2", 
  birth_date: Date.today,
  address: "17/A Jagad bose road, Kolkata-700056",
  sex: "M",
  salary: 7000.00,
  super_ssn: e5.id
)

# update manager ssn no
d1.update!(manager_ssn: e1, mgr_start_date: Date.today)
d2.update!(manager_ssn: e4, mgr_start_date: Date.today)

# create project and assign employees
p1 = d1.projects.create(name: "P1", location: "Behala")
p1.employees << e1
p1.employees << e2
p1.employees << e3

p2 = d2.projects.create(name: "P2", location: "Taltola")
p2.employees << e4
p2.employees << e5
p2.employees << e6