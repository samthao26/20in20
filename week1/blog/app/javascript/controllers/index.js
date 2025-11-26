import { Application } from "@hotwired/stimulus"

const application = Application.start()
application.debug = false
window.Stimulus = application

// Tự động load tất cả *_controller.js trong thư mục controllers
const controllers = import.meta.glob("./**/*_controller.js")

for (const path in controllers) {
    controllers[path]().then((module) => {
        const name = path
            .replace("./", "")
            .replace("_controller.js", "")
            .replace("/", "--")
        application.register(name, module.default)
    })
}

export { application }
