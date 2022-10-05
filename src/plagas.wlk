class Plaga {
	var property poblacion
	
	method transmiteEnfermedades() = poblacion >= 10
	method efectoDelAtaque() {poblacion *= 1.1}
}

class Cucaracha inherits Plaga {
	var property pesoPromedio
	
	method nivelDeDanio() = poblacion * 0.5
	
	override method transmiteEnfermedades() = 
		super() && pesoPromedio >= 10
	
	override method efectoDelAtaque() {
		super()
		pesoPromedio += 2
	} 
}

class Pulga inherits Plaga {
	method nivelDeDanio() = self.poblacion() * 2
}

class Garrapata inherits Pulga {
	override method efectoDelAtaque() {
		poblacion *= 1.2
	}
}

class Mosquito inherits Plaga {
	method nivelDeDanio() = poblacion
	override method transmiteEnfermedades() =
		poblacion % 3 == 0 && super()
}
