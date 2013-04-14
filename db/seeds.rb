User.delete_all

u1 = User.create(name:"Jane Sternbach", email:"janesternbach@gmail.com", password:"abc", password_confirmation:"abc", phone:"+16463275054", is_owner:true, address:"251 W 98th St, New York, NY")
u2 = User.create(name:"Jane Janerson", email:"janesternbach+1@gmail.com", password:"abc", password_confirmation:"abc", phone:"+16463275054", is_owner:false, address:"251 W 98th St, New York, NY")
