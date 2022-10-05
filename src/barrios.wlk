import elementos.*

class Barrio {
	const elementos = []
	method agregarElemento(unElemento) = elementos.add(unElemento)
	
	method esCopado() = self.cantBuenos() > self.cantMalos()
	method cantBuenos() = elementos.count({e=>e.esBueno()})
	method cantMalos() = elementos.size() - self.cantBuenos()
}

