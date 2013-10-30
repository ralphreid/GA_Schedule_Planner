
role_admin = Role.create(name: 'admin', description: 'placeholder desc for admin')
role_instructor = Role.create(name: 'instructor', description: 'placeholder desc for instructor')
role_read = Role.create(name: 'reader', description: 'placeholder desc for reader')
role_produce = Role.create(name: 'producer', description: 'placeholder desc for producer')
role_student = Role.create(name: 'student', description: 'placeholder desc for student')


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

room1 = Classroom.create(name: "St. Ann's", capacity: 10, av_resources: 'projector', location: "St. Ann's", location_url: "https://maps.google.co.uk/maps?q=st+ann+jamaica&client=safari&oe=UTF-8&hnear=St+Ann+Parish,+Jamaica&gl=uk&t=m&z=11&iwloc=A")
room2 = Classroom.create(name: "Lime Hall", capacity: 10, av_resources: 'projector', location: "St. Ann's", location_url: "https://maps.google.co.uk/maps?q=st+ann+jamaica&client=safari&oe=UTF-8&hnear=St+Ann+Parish,+Jamaica&gl=uk&t=m&z=11&iwloc=A")
room3 = Classroom.create(name: "Negril", capacity: 10, av_resources: 'projector', location: "St. Ann's", location_url: "https://maps.google.co.uk/maps?q=st+ann+jamaica&client=safari&oe=UTF-8&hnear=St+Ann+Parish,+Jamaica&gl=uk&t=m&z=11&iwloc=A")
room4 = Classroom.create(name: "Montego Bay", capacity: 10, av_resources: 'projector', location: "St. Ann's", location_url: "https://maps.google.co.uk/maps?q=st+ann+jamaica&client=safari&oe=UTF-8&hnear=St+Ann+Parish,+Jamaica&gl=uk&t=m&z=11&iwloc=A")
room5 = Classroom.create(name: "Runaway Bay", capacity: 10, av_resources: 'projector', location: "St. Ann's", location_url: "https://maps.google.co.uk/maps?q=st+ann+jamaica&client=safari&oe=UTF-8&hnear=St+Ann+Parish,+Jamaica&gl=uk&t=m&z=11&iwloc=A")
room6 = Classroom.create(name: "Port Antonio", capacity: 10, av_resources: 'projector', location: "St. Ann's", location_url: "https://maps.google.co.uk/maps?q=st+ann+jamaica&client=safari&oe=UTF-8&hnear=St+Ann+Parish,+Jamaica&gl=uk&t=m&z=11&iwloc=A")

RoomBooking.create(lesson_id: lesson1[:id], classroom_id: room1[:id])
RoomBooking.create(lesson_id: lesson2[:id], classroom_id: room2[:id])
RoomBooking.create(lesson_id: lesson3[:id], classroom_id: room3[:id])
RoomBooking.create(lesson_id: lesson4[:id], classroom_id: room4[:id])
RoomBooking.create(lesson_id: lesson5[:id], classroom_id: room5[:id])
RoomBooking.create(lesson_id: lesson6[:id], classroom_id: room6[:id])

# Producers
user_producer = User.create(first_name: "Bob_producer", last_name: "Marley_producer")
Authorization.create(user_id: user_producer[:id], role_id: role_produce[:id])
course1.user_id = user_producer[:id]

user_producer = User.create(first_name: "Jane_producer", last_name: "Foo_producer")
Authorization.create(user_id: user_producer[:id], role_id: role_produce[:id])
course2.user_id = user_producer[:id]

user_producer = User.create(first_name: "Mike_producer", last_name: "Jones_producer")
Authorization.create(user_id: user_producer[:id], role_id: role_produce[:id])
course3.user_id = user_producer[:id]

# Instructors

user = User.create(first_name: "Gerry___1", last_name: "Inst__1")
Authorization.create(user_id: user[:id], role_id: role_instructor[:id])
InstructorAllocation.create(instructor_id: user[:id], lesson_id: lesson1[:id])

user = User.create(first_name: "Jo", last_name: "Mama")
Authorization.create(user_id: user[:id], role_id: role_instructor[:id])
InstructorAllocation.create(instructor_id: user[:id], lesson_id: lesson2[:id])

user = User.create(first_name: "Jane", last_name: "Smith")
Authorization.create(user_id: user[:id], role_id: role_instructor[:id])
InstructorAllocation.create(instructor_id: user[:id], lesson_id: lesson3[:id])

user = User.create(first_name: "Jimmy", last_name: "Cliff")
Authorization.create(user_id: user[:id], role_id: role_instructor[:id])
InstructorAllocation.create(instructor_id: user[:id], lesson_id: lesson4[:id])

user = User.create(first_name: "Ziggy", last_name: "Marley")
Authorization.create(user_id: user[:id], role_id: role_instructor[:id])
InstructorAllocation.create(instructor_id: user[:id], lesson_id: lesson5[:id])

user = User.create(first_name: "Bill", last_name: "Clinton")
Authorization.create(user_id: user[:id], role_id: role_instructor[:id])
InstructorAllocation.create(instructor_id: user[:id], lesson_id: lesson6[:id])

# Students
20.times do |i|
  user = User.create(first_name: "Bob____#{i}", last_name: "Marley___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_student[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson1[:id], payment_status: 'paid')
end

20.times do |i|
  user = User.create(first_name: "Jane____#{i}", last_name: "Smith___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_student[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson2[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "Larry____#{i}", last_name: "Tony___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_student[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson3[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "____#{i} Bob", last_name: "Andew___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_student[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson4[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "____#{i} Stacy", last_name: "Jones___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_student[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson5[:id], payment_status: 'un-paid')
end

20.times do |i|
  user = User.create(first_name: "____#{i} John", last_name: "Adams___#{i}")
  authorisation = Authorization.create(user_id: user[:id], role_id: role_student[:id])
  enrollment = Enrollment.create(student_id: user[:id], lesson_id: lesson4[:id], payment_status: 'paid')
end


