# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Time1.Repo.insert!(%Time1.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Time1.Repo
alias Time1.Users.User
alias Time1.Jobs.Job

# Users
Repo.insert!(%User{name: "Robert Samuels", email: "RSam@gmail.com", is_manager: true, password: "test"})
Repo.insert!(%User{name: "Lauren Simpson", email: "Lassy@gmail.com", is_manager: true, password: "lassy"})
Repo.insert!(%User{name: "Bob Gregory", email: "bobG@gmail.com", is_manager: false, password: "test2"})
Repo.insert!(%User{name: "Rebecca Smalls", email: "becky@gmail.com", is_manager: false, password: "becca"})

# Jobs
Repo.insert!(%Job{name: "Write TPS Report", desc: "Due Friday", budget: 1500, manager: Time1.Users.get_user_by_email("RSam@gmail.com").id})
Repo.insert!(%Job{name: "Job 2", desc: "Important", budget: 150, manager: Time1.Users.get_user_by_email("Lassy@gmail.com").id})
Repo.insert!(%Job{name: "Pick up Dry Cleaning", desc: "Tip Them", budget: 70, manager: Time1.Users.get_user_by_email("Lassy@gmail.com").id})
Repo.insert!(%Job{name: "I dunno", desc: "awef", budget: 300, manager: Time1.Users.get_user_by_email("RSam@gmail.com").id})
Repo.insert!(%Job{name: "B", desc: "B desc", budget: 700, manager: Time1.Users.get_user_by_email("RSam@gmail.com").id})
Repo.insert!(%Job{name: "Get Married", desc: "Buy a Present", budget: 100000, manager: Time1.Users.get_user_by_email("RSam@gmail.com").id})
