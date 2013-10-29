
role_admin = Role.create(name: 'admin', description: 'placeholder desc for admin')
role_auth = Role.create(name: 'authenticated user', description: 'placeholder desc for authenticated user')
role_read = Role.create(name: 'reader', description: 'placeholder desc for reader')

user_admin = User.create(first_name: "Bob", last_name: "Marley")
Authorization.create(user_id: user_admin[:id], role_id: role_admin[:id])

course1 = Course.create(name: 'WDI', description: 'placeholder desc for WDI course', status: 'active')
course2 = Course.create(name: 'UX', description: 'placeholder desc for UX course', status: 'active')
course3 = Course.create(name: 'Front-End', description: 'placeholder desc for Front-End course', status: 'active')

lesson1 = Lesson.create(course_id: course1[:id], frequency: 'daily', url: 'http://www.google.com', start: 10.days.from_now.to_date, end: 100.days.from_now.to_date)
lesson2 = Lesson.create(course_id: course1[:id], frequency: 'daily', url: 'http://www.google.com', start: 20.days.from_now.to_date, end: 110.days.from_now.to_date)
lesson3 = Lesson.create(course_id: course2[:id], frequency: 'daily', url: 'http://www.google.com', start: 10.days.from_now.to_date, end: 100.days.from_now.to_date)
lesson4 = Lesson.create(course_id: course2[:id], frequency: 'daily', url: 'http://www.google.com', start: 20.days.from_now.to_date, end: 110.days.from_now.to_date)
lesson5 = Lesson.create(course_id: course3[:id], frequency: "Tues & Thurs", url: 'http://www.google.com', start: 10.days.from_now.to_date, end: 100.days.from_now.to_date)
lesson6 = Lesson.create(course_id: course3[:id], frequency: "Mon & Weds", url: 'http://www.google.com', start: 20.days.from_now.to_date, end: 110.days.from_now.to_date)

# Instructors

# Students
20.times do |i|
  user = User.create(first_name: "Bob____#{i}", last_name: "Marley___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_read[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson1[:id], payment_status: 'paid')
end

20.times do |i|
  user = User.create(first_name: "Jane____#{i}", last_name: "Smith___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_read[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson2[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "Larry____#{i}", last_name: "Tony___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_read[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson3[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "____#{i} Bob", last_name: "Andew___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_read[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson4[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "____#{i} Stacy", last_name: "Jones___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_read[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson5[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "____#{i} John", last_name: "Adams___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_read[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson4[:id], payment_status: 'paid')
end


