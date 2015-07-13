# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Roles
puts '# Roles'
role_teacher = Role.create!(name: "teacher", description: "Teacher", value: "Teacher")
role_student = Role.create!(name: "student", description: "Student", value: "Student")

# Users
puts '# User'
teacher_user = User.create(email: 'eliaswebdev@gmail.com', password: '12345678')

puts '# Add user permitions'
teacher_user.roles << role_teacher

# Roles
puts '# Students'
students = Student.create([
	{name: 'Carlos Henrique R. de Sousa'},
	{name: 'Daniel dos Santos Silva'},
	{name: 'Elias Ferreira Junior'},
	{name: 'Francisco Alisson Silva de Araújo'},
	{name: 'Jorge Henrique Melo Carneiro da Cunha'},
	{name: 'Keoma Sousa Coelho'},
	{name: 'Sinésio Santos da Silva Neto'},
])

# Homeworks 
# puts '# Homeworks'
# homeworks = Homework.create([

# ])