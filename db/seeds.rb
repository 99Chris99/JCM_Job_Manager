# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Work.destroy_all
Job.destroy_all
Person.destroy_all

person_new = Person.create [

{name: "Tom"},
{name: "Bob"},
{name: "Mark"},
{name: "Sally"}

]

job_new = Job.create [
{
    extid: "BL001-JA",
    name: "Long Arm Bracket, Jenson Automotive",
    status: "in progress",
    start_date: "2020-02-10",
    notes: "Using steel composit block"
},
{
    extid: "Cas 047-PD",
    name: "Gearbox caseing milling, Pro Drive",
    status: "in progress",
    start_date: "2020-02-11",
    notes: "3mm tolerance required, have finished lower casing"
},
{
    extid: "SupR ZZ32",
    name: "Support Rods, Jenson Automotive",
    status: "not started",
    notes: "quantity = x20"
},
{
    extid: "CoilMout 44232",
    name: "Coil Mounting, Globex Corporation",
    status: "finished",
    start_date: "2020-02-11",
    finish_date: "2020-02-13",
    notes: "Extra steel was used"
}
]

work_new = Work.create [
{
duration: "5.5",
date: "2020-02-10",
work_notes: "used the big drill",
# job_id: Job.all[0],
# person_id: Person.all[0]
job_id: Job.first.id,
person_id: Person.first.id
}
]



