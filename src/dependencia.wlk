class Dependencias{
	var flota = []
	var pedidos = []
	var property empleados = 15

method agregarAFlota(rodado){flota.add(rodado)}
method quitarDeFlota(rodado){flota.remove(rodado)}
method pesoTotalFlota(){return flota.sum({rodado => rodado.peso()})}
method estaBienEquipada(){return flota.size() >= 3 and flota.all({rodado => rodado.velocidad() >= 100})}
method capacidadTotalEnColor(color) {return flota.filter{rodado=>rodado.color()==color}.sum{rodado=>rodado.capacidad()}}
method colorDelRodadoMasRapido() {return flota.max{rodado => rodado.velocidad()}.color()}
method capacidadFaltante() { return empleados - flota.sum({rodado => rodado.capacidad()})}
method esGrande() {return empleados >= 40 && flota.size() == 5}

method agregarPedidos(pedido) {pedidos.add(pedido)}
method quitarPedidos(pedido) {pedidos.remove(pedido)}
method totalDePasajeros(){return pedidos.sum({pedido => pedido.pasajeros()})}

//cuáles de los pedidos que tiene registrados no puede ser satisfecho por ninguno de los autos afectados a la dependencia.

method satisfecho() {return pedidos.filter()}

method autosAfectados(){}
}
