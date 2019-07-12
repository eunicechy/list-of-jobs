# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') unless AdminUser.find_by(email: 'admin@example.com')

business_work= Field.create(
title: "Business Jobs",
description: "All business related jobs are available here!",
steps: "Apply to the jobs by sending in your resume. Then, you will be notify if you're to be shortlisted.",
source: "https://my.wobbjobs.com/jobs"
)
business_work.works.create(title:"Digital Marketing Manager",
company: "Agensi Perkergaan Hays", description: "Performance Marketing and understanding digital marketing data", location: "Muar, Johor", link: "www.wobb.com.my")
business_work.works.create(title:"Business Development Manager", company:"BD BHD", description: "Develop business model for the company", location:"Petaling Jaya, Selangor", link:"www.wobb.com.my")
business_work.works.create(title:"Business Development Executive", company"BD BHD", description: "Executive for business development", location: "Kuala Lumpur", link: "www.wobb.com.my")
business_work.works.create(title:"Finance and Operations Intern", company:"Operate Company", description:"Internship for fresh graduates", location: "Penang", link:"www.wobb.com.my")

it_work= Field.create(
title: "Information Technology Jobs",
description: "All IT jobs vacancy can be found here!",
steps: "Apply to the jobs by sending in your resume. Then, you will be notify if you're to be shortlisted.",
source: "https://my.wobbjobs.com/"
)
it_work.works.create(title: "Front End Developer", company: "Tech Company", description: "Develop front end", location:"Kuala Lumpur", link: "www.wobb.com.my")
it_work.works.create(title: "Web Designer", company: "T company", description: "Design web", location: "Sabah", link: "www.wobb.com.my")
it_work.works.create(title: "Senior Mobile App Developer", company: "SM Tech", description: "Develop mobile app", location: "Petaling Jaya, Selangor", link: "www.wobb.com.my")
