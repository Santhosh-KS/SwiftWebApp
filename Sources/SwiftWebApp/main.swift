import Kitura
import LoggerAPI
import HeliumLogger
import KituraStencil

HeliumLogger.use(.info)
let router = Router()
//router.setDefault(templateEngine: StencilTemplateEngine())
router.get("/") {
    request, response, next in
    try response.send("Hello Santhosh").end()
}

router.get("/staff") {
    request, response, next in
    try response.send("Meet our great team").end()
}

router.get("/contact") {
    request, response, next in
    try response.send("Hello Santhosh").end()
}

Kitura.addHTTPServer(onPort: 8090, with: router)
Log.info("Haters gonna hate!")
Kitura.run()