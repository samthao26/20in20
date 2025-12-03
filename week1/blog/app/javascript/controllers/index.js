// app/javascript/controllers/index.js
import { Application } from "@hotwired/stimulus"

// Khởi tạo Stimulus
const application = Application.start()
window.Stimulus = application

// Import từng controller thủ công
import HelloController from "./hello_controller"


// Đăng ký controller với Stimulus
application.register("hello", HelloController)


export { application }
