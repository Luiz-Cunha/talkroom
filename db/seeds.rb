require 'open-uri'

# Clear existing data
Message.destroy_all
ClientChatroom.destroy_all
CounsellorChatroom.destroy_all
Appointment.destroy_all
User.destroy_all
Counsellor.destroy_all
Supervisor.destroy_all

fileprof1 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof2 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof3 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof4 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof5 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof6 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")

# Criação de supervisores
supervisor1 = Supervisor.new(
  email: "supervisor1@example.com",
  password: 'password',
  password_confirmation: 'password'
)
supervisor1.photo.attach(io: fileprof1, filename: "supervisor1_profile_pic.png", content_type: "image/png")
supervisor1.save!

supervisor2 = Supervisor.new(
  email: "supervisor2@example.com",
  password: 'password',
  password_confirmation: 'password'
)
supervisor2.photo.attach(io: fileprof2, filename: "supervisor2_profile_pic.png", content_type: "image/png")
supervisor2.save!

# Criação de conselheiros
counsellor1 = Counsellor.new(
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
counsellor1.photo.attach(io: fileprof3, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor1.save!

counsellor2 = Counsellor.new(
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
counsellor2.photo.attach(io: fileprof4, filename: "counsellor2_profile_pic.png", content_type: "image/png")
counsellor2.save!

# Criação de usuários
user1 = User.new(
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
user1.photo.attach(io: fileprof5, filename: "user1_profile_pic.png", content_type: "image/png")
user1.save!

user2 = User.new(
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
user2.photo.attach(io: fileprof6, filename: "user2_profile_pic.png", content_type: "image/png")
user2.save!

puts "Seed data created successfully with photos!"
