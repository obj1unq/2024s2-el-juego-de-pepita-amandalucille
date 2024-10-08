import wollok.game.*
import pepita.*

object nido{
    const property position = game.at(5,7)
    
    method image(){
        return "nido.png"
    }
}

object silvestre {
    const presa = pepita

    method image(){
        return "silvestre.png"
    }

    method position(){
        return game.at(presa.position().x().max(3),0) //pepita es presa para silvestre.
    }

}
