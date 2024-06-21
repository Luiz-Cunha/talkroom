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
fileprof2 = URI.open("https://www.library.pima.gov/wp-content/uploads/sites/6/2022/11/Em-DeMeester-Lane-445x445-1.jpg")
fileprof3 = URI.open("https://randomuser.me/api/portraits/women/65.jpg")
fileprof4 = URI.open("https://randomuser.me/api/portraits/men/66.jpg")
fileprof5 = URI.open("https://randomuser.me/api/portraits/women/17.jpg")
fileprof6 = URI.open("https://randomuser.me/api/portraits/men/14.jpg")
fileprof7 = URI.open("https://randomuser.me/api/portraits/men/45.jpg")
fileprof8 = URI.open("https://randomuser.me/api/portraits/women/71.jpg")
fileprof9 = URI.open("https://randomuser.me/api/portraits/men/39.jpg")
fileprof10 = URI.open("https://randomuser.me/api/portraits/women/68.jpg")
fileprof11 = URI.open("https://randomuser.me/api/portraits/women/45.jpg")
fileprof12 = URI.open("https://randomuser.me/api/portraits/men/5.jpg")
fileprof13 = URI.open("https://randomuser.me/api/portraits/women/75.jpg")
fileprof14 = URI.open("https://randomuser.me/api/portraits/men/29.jpg")
fileprof15 = URI.open("https://randomuser.me/api/portraits/women/58.jpg")
fileprof16 = URI.open("https://randomuser.me/api/portraits/men/91.jpg")
fileprof17 = URI.open("https://randomuser.me/api/portraits/women/91.jpg")
fileprof18 = URI.open("https://randomuser.me/api/portraits/women/40.jpg")
fileprof19 = URI.open("https://randomuser.me/api/portraits/men/72.jpg")
fileprof20 = URI.open("https://randomuser.me/api/portraits/women/32.jpg")
fileprof21 = URI.open("https://randomuser.me/api/portraits/men/37.jpg")
fileprof22 = URI.open("https://randomuser.me/api/portraits/women/49.jpg")

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

#User default test
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


# Criação de conselheiros
counsellor1 = Counsellor.new(
  email: "emily.johnson@gmail.com",
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
  email: "carlos.rivera@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Carlos Rivera",
  birthdate: Date.new(1995, 5, 20),
  gender: "Male",
  address: "456 Elm St, Madrid, Spain",
  latitude: 40.4168,
  longitude: -3.7038,
  location: "Madrid, Spain",
  university_name: "Universidad Complutense de Madrid",
  university_id: "UCM12345",
  degree_program: "Educational Psychology",
  year_of_study: 2,
  expected_graduation_date: Date.new(2025, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Volunteer at school counseling center",
  consent: true,
  terms_conditions: true
)

counsellor2.photo.attach(io: fileprof4, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor2.save!

counsellor3 = Counsellor.new(
  email: "aisha.khan@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Aisha Khan",
  birthdate: Date.new(1994, 11, 30),
  gender: "Female",
  address: "789 Maple St, Dubai, UAE",
  latitude: 25.2048,
  longitude: 55.2708,
  location: "Dubai, UAE",
  university_name: "University of Dubai",
  university_id: "UD12345",
  degree_program: "Marriage and Family Therapy",
  year_of_study: 1,
  expected_graduation_date: Date.new(2026, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Peer counselor during undergraduate studies",
  consent: true,
  terms_conditions: true
)

counsellor3.photo.attach(io: fileprof5, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor3.save!


counsellor4 = Counsellor.new(
  email: "lars.svensson@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Lars Svensson",
  birthdate: Date.new(1993, 3, 10),
  gender: "Male",
  address: "101 Birch St, Stockholm, Sweden",
  latitude: 59.3293,
  longitude: 18.0686,
  location: "Stockholm, Sweden",
  university_name: "Stockholm University",
  university_id: "SU12345",
  degree_program: "Industrial-Organizational Psychology",
  year_of_study: 4,
  expected_graduation_date: Date.new(2023, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "HR intern at multinational corporation",
  consent: true,
  terms_conditions: true
)

counsellor4.photo.attach(io: fileprof6, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor4.save!

counsellor5 = Counsellor.new(
  email: "chen.wei@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Chen Wei",
  birthdate: Date.new(1997, 8, 22),
  gender: "Male",
  address: "202 Pine St, Beijing, China",
  latitude: 39.9042,
  longitude: 116.4074,
  location: "Beijing, China",
  university_name: "Peking University",
  university_id: "PU12345",
  degree_program: "Health Psychology",
  year_of_study: 3,
  expected_graduation_date: Date.new(2024, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Internship at hospital psychology department",
  consent: true,
  terms_conditions: true
)

counsellor5.photo.attach(io: fileprof7, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor5.save!

counsellor6 = Counsellor.new(
  email: "sophia.martins@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Sophia Martins",
  birthdate: Date.new(1992, 12, 1),
  gender: "Female",
  address: "303 Oak St, Lisbon, Portugal",
  latitude: 38.7223,
  longitude: -9.1393,
  location: "Lisbon, Portugal",
  university_name: "Universidade de Lisboa",
  university_id: "UL12345",
  degree_program: "Clinical Psychology",
  year_of_study: 2,
  expected_graduation_date: Date.new(2025, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Private practice intern",
  consent: true,
  terms_conditions: true
)

counsellor6.photo.attach(io: fileprof8, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor6.save!

counsellor7 = Counsellor.new(
  email: "ravi.patel@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Ravi Patel",
  birthdate: Date.new(1991, 7, 15),
  gender: "Male",
  address: "404 Cedar St, Mumbai, India",
  latitude: 19.0760,
  longitude: 72.8777,
  location: "Mumbai, India",
  university_name: "University of Mumbai",
  university_id: "UM12345",
  degree_program: "Counseling Psychology",
  year_of_study: 1,
  expected_graduation_date: Date.new(2026, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Volunteer at local NGO",
  consent: true,
  terms_conditions: true
)

counsellor7.photo.attach(io: fileprof9, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor7.save!


counsellor8 = Counsellor.new(
  email: "anna.muller@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Anna Müller",
  birthdate: Date.new(1996, 4, 18),
  gender: "Female",
  address: "505 Walnut St, Berlin, Germany",
  latitude: 52.5200,
  longitude: 13.4050,
  location: "Berlin, Germany",
  university_name: "Humboldt University of Berlin",
  university_id: "HU12345",
  degree_program: "Developmental Psychology",
  year_of_study: 3,
  expected_graduation_date: Date.new(2024, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Research assistant in child development lab",
  consent: true,
  terms_conditions: true
)

counsellor8.photo.attach(io: fileprof10, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor8.save!

counsellor9 = Counsellor.new(
  email: "olivia.brown@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Olivia Brown",
  birthdate: Date.new(1994, 9, 2),
  gender: "Female",
  address: "606 Cherry St, Sydney, Australia",
  latitude: -33.8688,
  longitude: 151.2093,
  location: "Sydney, Australia",
  university_name: "University of Sydney",
  university_id: "US12345",
  degree_program: "School Psychology",
  year_of_study: 4,
  expected_graduation_date: Date.new(2023, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Intern at high school counseling office",
  consent: true,
  terms_conditions: true
)

counsellor9.photo.attach(io: fileprof11, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor9.save!

counsellor10 = Counsellor.new(
  email: "mohamed.salah@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Mohamed Salah",
  birthdate: Date.new(1993, 5, 12),
  gender: "Male",
  address: "707 Chestnut St, Cairo, Egypt",
  latitude: 30.0444,
  longitude: 31.2357,
  location: "Cairo, Egypt",
  university_name: "Cairo University",
  university_id: "CU12345",
  degree_program: "Clinical Psychology",
  year_of_study: 2,
  expected_graduation_date: Date.new(2025, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Internship at mental health clinic",
  consent: true,
  terms_conditions: true
)

counsellor10.photo.attach(io: fileprof12, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor10.save!

counsellor11 = Counsellor.new(
  email: "fatima.ahmed@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Fatima Ahmed",
  birthdate: Date.new(1998, 1, 25),
  gender: "Female",
  address: "808 Poplar St, Nairobi, Kenya",
  latitude: -1.2921,
  longitude: 36.8219,
  location: "Nairobi, Kenya",
  university_name: "University of Nairobi",
  university_id: "UN12345",
  degree_program: "Social Work",
  year_of_study: 1,
  expected_graduation_date: Date.new(2026, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Community health volunteer",
  consent: true,
  terms_conditions: true
)

counsellor11.photo.attach(io: fileprof13, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor11.save!

counsellor12 = Counsellor.new(
  email: "john.smith@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "John Smith",
  birthdate: Date.new(1995, 6, 14),
  gender: "Male",
  address: "909 Spruce St, Toronto, Canada",
  latitude: 43.6510,
  longitude: -79.3470,
  location: "Toronto, Canada",
  university_name: "University of Toronto",
  university_id: "UT12345",
  degree_program: "Behavioral Psychology",
  year_of_study: 3,
  expected_graduation_date: Date.new(2024, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Internship at behavioral therapy center",
  consent: true,
  terms_conditions: true
)

counsellor12.photo.attach(io: fileprof14, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor12.save!

counsellor13 = Counsellor.new(
  email: "maria.santos@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Maria Santos",
  birthdate: Date.new(1994, 10, 30),
  gender: "Female",
  address: "1010 Aspen St, Rio de Janeiro, Brazil",
  latitude: -22.9068,
  longitude: -43.1729,
  location: "Rio de Janeiro, Brazil",
  university_name: "Federal University of Rio de Janeiro",
  university_id: "UFRJ12345",
  degree_program: "Clinical Psychology",
  year_of_study: 2,
  expected_graduation_date: Date.new(2025, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Internship at public health clinic",
  consent: true,
  terms_conditions: true
)

counsellor13.photo.attach(io: fileprof15, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor13.save!

counsellor14 = Counsellor.new(
  email: "hassan.ali@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Hassan Ali",
  birthdate: Date.new(1993, 4, 17),
  gender: "Male",
  address: "1111 Cedar Ave, Lahore, Pakistan",
  latitude: 31.5497,
  longitude: 74.3436,
  location: "Lahore, Pakistan",
  university_name: "University of the Punjab",
  university_id: "PU12345",
  degree_program: "Counseling Psychology",
  year_of_study: 4,
  expected_graduation_date: Date.new(2023, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Volunteer counselor at local NGO",
  consent: true,
  terms_conditions: true
)

counsellor14.photo.attach(io: fileprof16, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor14.save!

counsellor15 = Counsellor.new(
  email: "elena.rodriguez@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Elena Rodriguez",
  birthdate: Date.new(1996, 9, 25),
  gender: "Female",
  address: "1212 Maple Ave, Mexico City, Mexico",
  latitude: 19.4326,
  longitude: -99.1332,
  location: "Mexico City, Mexico",
  university_name: "National Autonomous University of Mexico",
  university_id: "UNAM12345",
  degree_program: "Educational Psychology",
  year_of_study: 3,
  expected_graduation_date: Date.new(2024, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Intern at educational support center",
  consent: true,
  terms_conditions: true
)

counsellor15.photo.attach(io: fileprof17, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor15.save!

counsellor16 = Counsellor.new(
  email: "anna.kim@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Anna Kim",
  birthdate: Date.new(1992, 2, 11),
  gender: "Female",
  address: "1313 Pine Ave, Seoul, South Korea",
  latitude: 37.5665,
  longitude: 126.9780,
  location: "Seoul, South Korea",
  university_name: "Seoul National University",
  university_id: "SNU12345",
  degree_program: "Clinical Psychology",
  year_of_study: 2,
  expected_graduation_date: Date.new(2025, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Intern at private mental health clinic",
  consent: true,
  terms_conditions: true
)

counsellor16.photo.attach(io: fileprof18, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor16.save!

counsellor17 = Counsellor.new(
  email: "peter.johnson@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Peter Johnson",
  birthdate: Date.new(1990, 5, 5),
  gender: "Male",
  address: "1414 Elm St, London, UK",
  latitude: 51.5074,
  longitude: -0.1278,
  location: "London, UK",
  university_name: "University College London",
  university_id: "UCL12345",
  degree_program: "Health Psychology",
  year_of_study: 4,
  expected_graduation_date: Date.new(2023, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Research assistant in health psychology lab",
  consent: true,
  terms_conditions: true
)

counsellor17.photo.attach(io: fileprof19, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor17.save!

counsellor18 = Counsellor.new(
  email: "nina.petrova@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Nina Petrova",
  birthdate: Date.new(1991, 8, 19),
  gender: "Female",
  address: "1515 Birch St, Moscow, Russia",
  latitude: 55.7558,
  longitude: 37.6173,
  location: "Moscow, Russia",
  university_name: "Lomonosov Moscow State University",
  university_id: "MSU12345",
  degree_program: "Developmental Psychology",
  year_of_study: 1,
  expected_graduation_date: Date.new(2026, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Intern at child development center",
  consent: true,
  terms_conditions: true
)

counsellor18.photo.attach(io: fileprof20, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor18.save!

counsellor19 = Counsellor.new(
  email: "ahmed.fahmy@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Ahmed Fahmy",
  birthdate: Date.new(1997, 12, 12),
  gender: "Male",
  address: "1616 Cherry St, Casablanca, Morocco",
  latitude: 33.5731,
  longitude: -7.5898,
  location: "Casablanca, Morocco",
  university_name: "Hassan II University",
  university_id: "HIIU12345",
  degree_program: "Clinical Psychology",
  year_of_study: 3,
  expected_graduation_date: Date.new(2024, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Intern at community mental health center",
  consent: true,
  terms_conditions: true
)

counsellor19.photo.attach(io: fileprof21, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor19.save!

counsellor20 = Counsellor.new(
  email: "laura.bianchi@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  fullname: "Laura Bianchi",
  birthdate: Date.new(1995, 3, 22),
  gender: "Female",
  address: "1717 Maple St, Rome, Italy",
  latitude: 41.9028,
  longitude: 12.4964,
  location: "Rome, Italy",
  university_name: "Sapienza University of Rome",
  university_id: "SUR12345",
  degree_program: "Social Psychology",
  year_of_study: 2,
  expected_graduation_date: Date.new(2025, 6, 15),
  counseling_experience: true,
  counseling_experience_description: "Intern at social services agency",
  consent: true,
  terms_conditions: true
)

counsellor20.photo.attach(io: fileprof22, filename: "counsellor1_profile_pic.png", content_type: "image/png")
counsellor20.save!

puts "Seed data created successfully with photos!"
