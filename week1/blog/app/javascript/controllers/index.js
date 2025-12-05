import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Import thủ công từng controller
import HelloController from "./hello_controller"
application.register("hello", HelloController)

export { application }
