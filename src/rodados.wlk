class Corsa {
	var property color
	method capacidad() {return 4}
	method velocidad() {return 150}
	method peso() {return 1300}

}

class Renault {
	var property tieneTanque = true
	var property color = "azul"
	method capacidad() {
		if(tieneTanque)
		{return 3}
		else {return 4}
	}	
	method velocidad() {
		if(tieneTanque)
		{return 120}
		else {return 110}	
	}
	method peso(){
		if(tieneTanque)
		{return 1350}
		else {return 1200}
	}
}

class Autoespecial {
	var property color 
	var property capacidad
	var property velocidad
	var property peso
}

object trafic{
	var property color = "blanco"
	var property interior = comodo
	var property motor = bataton
	method capacidad(){return interior.capacidad()}
	method velocidad(){return motor.velocidad()}
	method peso() {return interior.peso() + motor.peso() + 4000}
}


object comodo{
	method capacidad() {return 5}
	method peso() {return 700}
}

object popular{
	method capacidad(){return 12}
	method peso() {return 1000}
}

object pulenta{
	method peso() {return 800}
	method velocidad() {return 130}
	}

object bataton{
	method peso() {return 500}
	method velocidad() {return 80}
}
