import Kitura
import KituraNet
import KituraSys

let router = Router()

router.get("/") {
request, response, next in
    response.status(.OK).send("Pozdrowienia od Andrzeja!")
    next()
}

let server = HTTPServer.listen(port: 8090, delegate: router)
Server.run()