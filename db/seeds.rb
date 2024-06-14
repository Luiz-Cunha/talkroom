# Clear existing data
Message.destroy_all
ClientChatroom.destroy_all
CounsellorChatroom.destroy_all
Appointment.destroy_all
User.destroy_all
Counsellor.destroy_all
Supervisor.destroy_all

# Create supervisors
supervisor1 = Supervisor.create!(
  email: "supervisor1@example.com",
  password: 'password',
  password_confirmation: 'password'
)

supervisor2 = Supervisor.create!(
  email: "supervisor2@example.com",
  password: 'password',
  password_confirmation: 'password'
)

# Create counsellors
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

# Created for the presentation
counsellor3 = Counsellor.create!(
  email: "luiz@test.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Luiz Cunha",
  birthdate: Date.new(2002, 11, 23),
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

# Create users
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

# Created for the presentation
user3 = User.create!(
  email: "munick@test.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Munick Souza",
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


# Create appointments
appointment1 = Appointment.create!(
  user: user1,
  counsellor: counsellor1,
  schedule_time: DateTime.now + 1.day,
  symptom: "Feeling anxious"
)

appointment2 = Appointment.create!(
  user: user2,
  counsellor: counsellor2,
  schedule_time: DateTime.now + 2.days,
  symptom: "Feeling depressed"
)


counsellor_chatroom1 = CounsellorChatroom.create!(
  counsellor: counsellor1,
  supervisor: supervisor1
)

counsellor_chatroom2 = CounsellorChatroom.create!(
  counsellor: counsellor2,
  supervisor: supervisor2
)

Message.create!(
  content: "Initial supervision message",
  sendable: supervisor1,
  chatroomable: counsellor_chatroom1
)

Message.create!(
  content: "Initial supervision message",
  sendable: supervisor2,
  chatroomable: counsellor_chatroom2
)


client_chatroom1 = ClientChatroom.create!(
  user: user1,
  counsellor: counsellor1
)

client_chatroom2 = ClientChatroom.create!(
  user: user2,
  counsellor: counsellor2
)


# Created for the presentation
client_chatroom3 = ClientChatroom.create!(
  user: user3,
  counsellor: counsellor3
)

# Create messages in client chatrooms

Message.create!(
  content: "Hello, I need help",
  sendable: user1,
  chatroomable: client_chatroom1
)

Message.create!(
  content: "Hello, how can I assist you?",
  sendable: counsellor1,
  chatroomable: client_chatroom1
)

Message.create!(
  content: "I am feeling very low",
  sendable: user2,
  chatroomable: client_chatroom2
)

Message.create!(
  content: "I am here to help you",
  sendable: counsellor2,
  chatroomable: client_chatroom2
)

puts "Seed data created successfully!"
