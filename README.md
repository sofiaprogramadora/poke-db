# Pokemon Database

How to run an admin:
lets say we want the first user admin
$ rc
user = User.first
user.superadmin_role=true
user.save