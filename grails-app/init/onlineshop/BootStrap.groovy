package onlineshop

class BootStrap {

    def init = { servletContext ->
        User user=User.findByEmail("admin@gmail.com")
       if(!user) {
           user=new User()
           user.userName= "admin"
           user.firstName="Ram"
           user.lastName= "Thapa"
           user.email="admin@gmail.com"
           user.role="admin"
           user.passWord="admin"
           user.save()
       }
    }
    def destroy = {
    }
}
