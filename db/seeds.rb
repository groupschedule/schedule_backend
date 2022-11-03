# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding"
c1=Cohort.create(
    name: "Introduction to JavaScript",
    description: "This is module covers a basic introduction to basic web languages of HTML, CSS3 and JavaScript language",
    technical_mentor_id: 1
)
c2=Cohort.create(
    name: "React JS",
    description: "React is a JavaScript library that makes it painless to create interactive User Interfaces(UIs)",
    technical_mentor_id: 2
)
c3=Cohort.create(
    name: "Ruby Programming Language",
    description: "Ruby is a open-source programming language that focuses on the simplicity and productivity of programming",
    technical_mentor_id: 3
)
c4=Cohort.create(
    name: "Ruby on Rails",
    description: "Ruby on Rails is a fully-featured IDE for productive web-development",
    technical_mentor_id: 3
)
s1=Student.create(
    cohort_id: 1,
    name: "David Mwenje",
    email: "davidmwenje@gmail.com",
    phone: 254701222333,
    image: "https://i2-prod.walesonline.co.uk/news/uk-news/article23927263.ece/ALTERNATES/s1200c/0_F038F02A-D11F-11EC-A042-0A2111BCB09D.jpg",
    password: 'here1',
    password_confirmation: 'here1'
)
s2=Student.create(
    cohort_id: 2,
    name: "Glenn Mwangi",
    email: "glennmwangi@gmail.com",
    phone: 254742568427,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    password: 'there2',
    password_confirmation: 'there2'
  
)
s3=Student.create(
    cohort_id: 2,
    name: "Margaret Njoki",
    email: "margaretnjoki@gmail.com",
    phone: 254712111555,
    image: "https://i.etsystatic.com/36532523/r/il/97ae46/4078306713/il_340x270.4078306713_n74s.jpg",
    password: 'when3',
    password_confirmation: 'when3'
   
)
tm1=TechnicalMentor.create(
    name: "Ian Okumu",
    email: "ianokumu@gmail.com",
    phone: 25479000000,
    password: 'busy23',
    password_confirmation: 'busy23'
)
tm2=TechnicalMentor.create(
    name: "Victor Kuria",
    email: "victorkuria@gmail.com",
    phone: 254711567333,
    password: 'away4',
    password_confirmation: 'away4'
)
tm3=TechnicalMentor.create(
    name: "Christine Karimi",
    email: "christineKarimi@gmail.com",
    phone: 254745454545,
    password: 'Kweli1',
    password_confirmation: 'Kweli1'
)
ss1=Session.create(
    session_name: 'Introduction to Active Record',
    cohort_id: 1,
    technical_mentor_id: 1,
    date: '2023-05-23',
    time: '12:00:00',
    link: "https://meet.google.com/ksh-jmmw-ach?authuser=0&hs=122",
    announcement: "The session is scheduled for 12 noon. Please keep time,"
)
ss2=Session.create(
    session_name: 'Introduction to Authentication',
    cohort_id: 2,
    technical_mentor_id: 2,
    date: '2023-07-24',
    time: '12:00:00',
    link: "https://meet.google.com/bgx-ddmb-sfq?authuser=0&hs=122",
    announcement: "This lecture's content will be a prerequisite to end of week of week lab,"
)
ss3=Session.create(
    session_name: 'Introduction Serialization',
    cohort_id: 2,
    technical_mentor_id: 2,
    date: '2023-07-25',
    time: '12:00:00',
    link: "https://meet.google.com/dtz-qsrk-emb?authuser=0&hs=122",
    announcement: "We will be delving into the deeper understanding of serialization,"
)
cm1=Comment.create(
    student_id: 1,
    session_id: 1,
    description: "Excellent content"
)
cm2=Comment.create(
    student_id: 2,
    session_id: 2,
    description: "Good Content"
)
cm3=Comment.create(
    student_id: 3,
    session_id: 2,
    description: "Nice Content"
)
d1 = Discussion.create(
  title: 'usEffect',
  description: 'I would be happy to hear your thoughts on what usEffect does and how it is incorporated in React components'
)
d2 = Discussion.create(
  title: 'Ruby Serialization',
  description: 'I tried perusing through the Canvas content about serialization but I did not get to understand a lot of the concepts. Any thoughts on how to go about will be highly appreciated'
)
d3 = Discussion.create(
  title: 'Model-View-Controllers(MVC)',
  description: 'Kindly drop in your comments on your understanding of MVC'
)
sd1 = StudentDiscussion.create(
  discussion_id: 1,
  student_id: 1,
  comment: 'That was eye-opening for me'
)
sd2 = StudentDiscussion.create(
  discussion_id: 2,
  student_id: 2,
  comment: 'Sincerely ata mimi sipati kitu'
)
sd3 = StudentDiscussion.create(
  discussion_id: 3,
  student_id: 3,
  comment: 'We can have an extended sit-in discussion about this'
)
puts 'done seeding'

