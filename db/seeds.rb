# Clear existing data
Message.destroy_all
ClientChatroom.destroy_all
CounsellorChatroom.destroy_all
Appointment.destroy_all
User.destroy_all
Counsellor.destroy_all
Supervisor.destroy_all

# Criação de supervisores
supervisor1 = Supervisor.create!(
  email: "supervisor1@example.com",
  password: 'password',
  password_confirmation: 'password'
)

# Adicionar foto para supervisor1
supervisor1.photo.attach(io: File.open('path/to/photo.jpg'), filename: 'photo.jpg', content_type: 'image/jpg')

supervisor2 = Supervisor.create!(
  email: "supervisor2@example.com",
  password: 'password',
  password_confirmation: 'password'
)

# Adicionar foto para supervisor2
supervisor2.photo.attach(io: File.open('path/to/photo.jpg'), filename: 'photo.jpg', content_type: 'image/jpg')

# Criação de conselheiros
counsellor1 = Counsellor.create!(
  email: "counsellor1@example.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Emily Johnson",
  birthdate: Date.new(1996, 2, 14),
  gender: "Female",
  address: "123 Main St, San Francisco, CA",
  latitude: 37.7749,
  longitude: -122.4194,
  location: "San Francisco, CA",
  university_name: "Stanford University",
  university_id: "SU12345",
  degree_program: "Clinical Psychology",
  year_of_study: 3,
  expected_graduation_date: Date.new(2024, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Internship at community mental health center",
  consent: true,
  terms_conditions: true
)

# Adicionar foto para counsellor1
counsellor1.photo.attach(io: File.open('path/to/photo.jpg'), filename: 'photo.jpg', content_type: 'image/jpg')

counsellor2 = Counsellor.create!(
  email: "counsellor2@example.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Dr. Michael Smith",
  birthdate: Date.new(2000, 11, 23),
  gender: "Male",
  address: "456 Elm St, Los Angeles, CA",
  latitude: 34.0522,
  longitude: -118.2437,
  location: "Los Angeles, CA",
  university_name: "UCLA",
  university_id: "UCLA98765",
  degree_program: "Counseling Psychology",
  year_of_study: 4,
  expected_graduation_date: Date.new(2023, 12, 20),
  counseling_experience: true,
  counseling_experience_description: "Volunteer counselor at high school",
  consent: true,
  terms_conditions: true
)

# Adicionar foto para counsellor2
counsellor2.photo.attach(io: File.open('path/to/photo.jpg'), filename: 'photo.jpg', content_type: 'image/jpg')

# Criação de usuários
user1 = User.create!(
  email: "user1@example.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "John Doe",
  birthdate: Date.new(1990, 5, 15),
  gender: "Male",
  location: "San Francisco, CA",
  received_counseling_description: "Had counseling during college.",
  received_counseling_before: true,
  other_issues: "Anxiety",
  consent: true,
  terms_conditions: true,
  issues_array: ["Stress", "Work-life balance"],
  consultation_history: "Discussed stress management techniques."
)

# Adicionar foto para user1
user1.photo.attach(io: File.open('path/to/photo.jpg'), filename: 'photo.jpg', content_type: 'image/jpg')

user2 = User.create!(
  email: "user2@example.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Jane Smith",
  birthdate: Date.new(1985, 8, 22),
  gender: "Female",
  location: "Los Angeles, CA",
  received_counseling_description: "Attended therapy sessions after a family loss.",
  received_counseling_before: true,
  other_issues: "Depression",
  consent: true,
  terms_conditions: true,
  issues_array: ["Grief", "Relationship issues"],
  consultation_history: "Focused on coping strategies for grief."
)

# Adicionar foto para user2
user2.photo.attach(io: File.open('path/to/photo.jpg'), filename: 'photo.jpg', content_type: 'image/jpg')

puts "Seed data created successfully with photos!"
