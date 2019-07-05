# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

business_work= Field.create(
title: "Business Jobs",
description: "All business related jobs are available here!",
steps: "Apply to the jobs by sending in your resume. Then, you will be notify if you're to be shortlisted.",
source: "https://my.wobbjobs.com/jobs"
)
business_work.jobs.create(description:"Digital Marketing Manager")
business_work.jobs.create(description:"Business Development Manager")
business_work.jobs.create(description:"Business Development Executive")
business_work.jobs.create(description:"Finance and Operations Intern")

it_work= Field.create(
title: "Information Technology Jobs",
description: "All IT jobs vacancy can be found here!",
steps: "Apply to the jobs by sending in your resume. Then, you will be notify if you're to be shortlisted.",
source: "https://my.wobbjobs.com/"
)
it_work.jobs.create(description: "Front End Developer")
it_work.jobs.create(description: "Web Designer")
it_work.jobs.create(description: "Senior Mobile App Developer")
