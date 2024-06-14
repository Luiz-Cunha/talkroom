
Message.destroy_all
ClientChatroom.destroy_all
CounsellorChatroom.destroy_all
Appointment.destroy_all
User.destroy_all
Counsellor.destroy_all
Supervisor.destroy_all

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


counsellor1 = Counsellor.create!(
  email: "counsellor1@example.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Emily Johnson",
  birthdate: Date.new(1996, 2, 14),
  gender: "Female",
  address: "San Francisco, CA",
  year_of_study: 2002,
)

counsellor2 = Counsellor.create!(
  email: "counsellor2@example.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Dr. Michael Smith",
  birthdate: Date.new(2000, 11, 23),
  gender: "Male",
  address: "Los Angeles, CA",
  year_of_study: 1998,
)


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
