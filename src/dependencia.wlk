class Dependencias{
	var flota = []
	var property empleados = 15

method agregarAFlota(rodado){flota.add(rodado)}
method quitarDeFlota(rodado){flota.remove(rodado)}
method pesoTotalFlota(){return flota.sum({rodado => rodado.peso()})}
method estaBienEquipada(){return flota.size() >= 3 and flota.all({rodado => rodado.velocidad() >= 100})}
method capacidadTotalEnColor(color) {return flota.filter{rodado=>rodado.color()==color}.sum{rodado=>rodado.capacidad()}}
method colorDelRodadoMasRapido() {return flota.max({rodado => rodado.velocidad().color()})}
method capacidadFaltante() { return empleados - flota.sum({rodado => rodado.capacidad()})}
method esGrande() {return empleados >= 40 && flota.size() == 5}
}
