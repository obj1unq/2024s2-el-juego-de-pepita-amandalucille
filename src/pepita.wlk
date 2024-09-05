import extras.*
object pepita {
	var energia = 100
	//var property position = game.origin() //getter y setter a la vez. la posicion es la celda 0.0 inferior izqueirda
	var property position = game.at(3,5) //getter y setter a la vez. la posicion es la celda 0.0 inferior izqueirda
	/*method position(_position){
		position =_position
	}
	method position (){
		return position // getter. necesario para que el prrograma funcione bien.el objeto necesita saber donde esta parado
	}*/
	const destino = nido
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}
	method image(){
		return	if (self.estaEnDestino(destino)){
			"pepita-grande.png"
		}else {
			"pepita.png"
		}
		
	}
	method text(){                                       
		return " x: " + position.x() + " y: " + position.x() //agrega texto sobre la imagen
	}
	method mover(direccion){
		position = direccion.siguiente(self.position())
	}
	method estaEnDestino(_destino){
		return position == destino.position()
	}
}