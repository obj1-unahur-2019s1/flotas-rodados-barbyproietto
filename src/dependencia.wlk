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

/* PEDIDOS */ 

method agregarPedidos(pedido) {pedidos.add(pedido)}
method quitarPedidos(pedido) {pedidos.remove(pedido)}
method totalDePasajeros(){return pedidos.sum({pedido => pedido.pasajeros()})}

method insatisfecho() {
	return pedidos.filter({pedido => not self.satisfecho(pedido)})
}


method satisfecho(pedido) {
	return flota.any({rodado => pedido.satisfacerPedido(rodado)})
}

method esColorRechazado(color) { 
	return pedidos.all({pedido => pedido.coloresIncompatibles().contains(color)})
}


method relajarTodosLosPedidos() {
	pedidos.forEach({pedido => pedido.relajar()})
}

}
