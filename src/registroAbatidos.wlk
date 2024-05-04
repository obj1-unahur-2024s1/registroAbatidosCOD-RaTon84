object registroAbatidosCOD {
	const abatidos =[43,18,49,62,33,39];
	const dias = [20221231,20230101,20230105,20230106,20230107,20230108];
	
	method cantidadDeDiasRegistrados(){
		return dias.size();
	}
	method estaVacioElRegistro(){
		return dias.isEmpty();
	}
	method algunDiaAbatio(cantidad){
		return abatidos.contains(cantidad);
	}
	method primerValorDeAbatidos(){
		return abatidos.first();
	}
	method ultimoValorDeAbatidos(){
		return abatidos.last();
	}
	method maximoValorDeAbatidos(){
		return abatidos.max();
	}
	method totalAbatidos(){
		return abatidos.sum();
	}
	method cantidadDeAbatidosElDia(dia){
		var cont=0;
		var bandera=true;		
		dias.forEach({d =>			
			if(d!=dia&&bandera){
				cont+=1
			}else{bandera=false}
		})
		return abatidos.get(cont);
	}
	method ultimoValorDeAbatidosConSize(){
		return abatidos.get(abatidos.size()-1);
	}
}

/*
>>> registroAbatidosCOD.cantidadDeDiasRegistrados()
6
>>> registroAbatidosCOD.estaVacioElRegistro()
false
>>> registroAbatidosCOD.algunDiaAbatio(49)
true
>>> registroAbatidosCOD.algunDiaAbatio(52)
false
>>> registroAbatidosCOD.primerValorDeAbatidos()
43
>>> registroAbatidosCOD.ultimoValorDeAbatidos()
39
>>> registroAbatidosCOD.maximoValorDeAbatidos()
62
>>> registroAbatidosCOD.totalAbatidos()
244
>>> registroAbatidosCOD.cantidadDeAbatidosElDia(20230105)
49
>>> 
 */