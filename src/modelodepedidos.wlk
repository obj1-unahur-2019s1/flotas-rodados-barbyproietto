import rodados.*
import dependencia.*

class Pedido{
	var property distancia 
	var property tiempoMaximo 
	var property pasajeros 
	var property coloresIncompatibles = #{}
	

	
	method velocidadRequerida(){ return distancia/tiempoMaximo }
	
	method satisfacerPedido(rodado){
		return rodado.velocidad() >= self.velocidadRequerida() + 10 //satisface velocidad
		and rodado.capacidad() >= pasajeros 						//satisface capacidad
		and not coloresIncompatibles.contains(rodado.color()) 		//satisface color
	}
	
	method acelerar() {tiempoMaximo -= 1}
	method relajar() {tiempoMaximo += 1}
}