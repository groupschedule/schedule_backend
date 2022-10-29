# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"
c1=Cohort.create(
    name: "SE-13",
    description: "Lorem Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor incidunt",
    technical_mentor_id: 1
)
c2=Cohort.create(
    name: "SE-14",
    description: "Lorem Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor incidunt",
    technical_mentor_id: 2
)
c3=Cohort.create(
    name: "SE-15",
    description: "Lorem Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor incidunt",
    technical_mentor_id: 3
)
c4=Cohort.create(
    name: "SE-16",
    description: "Lorem Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor Ipsum dolor sit amet, consectetur adipiscing, sed eiusmod ipsum dolor sit amet, consectetur adipiscing, sed eiusmod tempor incidunt",
    technical_mentor_id: 3
)
s1=Student.create(
    cohort_id: 1,
    name: "David Mwenje",
    email: "davidmwenje@gmail.com",
    phone: 254701222333,
    image: "https://i2-prod.walesonline.co.uk/news/uk-news/article23927263.ece/ALTERNATES/s1200c/0_F038F02A-D11F-11EC-A042-0A2111BCB09D.jpg",
    module_id: 1
)
s2=Student.create(
    cohort_id: 2,
    name: "Glenn Mwangi",
    email: "glennmwangi@gmail.com",
    phone: 254742568427,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    module_id: 1
)
s3=Student.create(
    cohort_id: 2,
    name: "Margaret Njoki",
    email: "margaretnjoki@gmail.com",
    phone: 254712111555,
    image: "https://i.etsystatic.com/36532523/r/il/97ae46/4078306713/il_340x270.4078306713_n74s.jpg",
    module_id: 1
)
tm1=TechnicalMentor.create(
    name: "Ian Okumu",
    email: "ianokumu@gmail.com",
    phone: 254722567890
)
tm2=TechnicalMentor.create(
    name: "Victor Kuria",
    email: "victorkuria@gmail.com",
    phone: 254711567333
)
tm3=TechnicalMentor.create(
    name: "Christine Karimi",
    email: "christineKarimi@gmail.com",
    phone: 254745454545
)
ss1=Session.create(
    session_name: 'Introduction to Active Record',
    cohort_id: 1,
    technical_mentor_id: 1,
    date: '2023-05-23',
    time: '12:00:00',
    link: "https://meet.google.com/ksh-jmmw-ach?authuser=0&hs=122"
)
ss2=Session.create(
    session_name: 'Introduction to Authentication',
    cohort_id: 2,
    technical_mentor_id: 2,
    date: '2023-07-24',
    time: '12:00:00',
    link: "https://meet.google.com/bgx-ddmb-sfq?authuser=0&hs=122"
)
ss3=Session.create(
    session_name: 'Introduction Serialization',
    cohort_id: 2,
    technical_mentor_id: 2,
    date: '2023-07-25',
    time: '12:00:00',
    link: "https://meet.google.com/dtz-qsrk-emb?authuser=0&hs=122"
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
a1=Announcement.create(
    technical_mentor_id: 1,
    session_id: 1,
    description: "Standup begins soon"
)
a2=Announcement.create(
    technical_mentor_id: 2,
    session_id: 2,
    description: "lectures begins soon"
)
a3=Announcement.create(
    technical_mentor_id: 3,
    session_id: 2,
    description: "feedback session begins soon"
)
puts "done seeding"