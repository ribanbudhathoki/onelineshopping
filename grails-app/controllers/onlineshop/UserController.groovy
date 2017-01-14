package onlineshop



class UserController {
    String message

    def login() {


        if (params.userName && params.passWord) {

            User user = User.findByUserNameAndPassWord(params.userName, params.passWord)

            if (user) {
                message = "Online Shopping Welcomes you"

                render(view: "../main", model: [message: message])
            } else {
                message = "Invalid Username Or Password"
                render(view: "../index", model: [message: message])
            }
        } else {
            message = "No username or Password"
            render(view: "../index", model: [message: message])

        }

    }

    def signUp() {
        if (params.firstName && params.lastName && params.userName && params.passWord && params.email) {
            User user = new User()
            user.userName = params.userName
            user.firstName = params.firstName
            user.lastName = params.lastName
            user.passWord = params.passWord
            user.role = "user"
            user.email = params.email
            user.save()
            message = "Successfully Singed Up"
            render(view: "../index", model: [message: message])
        } else {
            message = "Please fill up the form properly and click submit"
            render(view: "../index", model: [message: message])

        }
    }

    def signOut() {
        message = "Successfully Logged Out"
        render(view: "../index", model: [message: message])

    }

    def list() {

        def users = User.list()
        render(view: "userList", model: [users: users])
    }

    def delete() {
        
       User user = User.findById(Integer.parseInt(params.id))
        user.delete(flush:true)
        redirect(action: "list")
    }

    def edit() {
        def user = User.findById(Integer.parseInt(params.id))

        render(view: "edit", model: [user: user])
    }

    def update() {
        User user=User.findById(Integer.parseInt(params.id))
        user.userName=params.userName
        user.email=params.email
        user.passWord=params.passWord
        user.save(flush:true)
         redirect(action: "list")
        }
    }




