object cod {
	//registroAbatidos
	const abatidos = [43,18,49,62,33,39];
	const dias = [20221231,20230101,20230105,20230106,20230107,20230108];	
	
	method abatidos(){return abatidos}		
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
			}
			else{bandera=false}
		})
		return abatidos.get(cont);
	}
	method ultimoValorDeAbatidosConSize(){
		return abatidos.get(abatidos.size()-1);
	}
	/*method diasConAbatidosSuperioresA(cuanto){
		return abatidos.count({a=> a>cuanto});		
	}*/	
	method diasConAbatidosSuperioresA(cuanto){		
		var diasSup=[];
		dias.forEach({dia=>			
			if(self.cantidadDeAbatidosElDia(dia)>cuanto){
				diasSup.add(dia);
			}
		})	
		return diasSup;		
	}
	method valoresDeAbatidosPares(){
		return abatidos.filter({a=>a.even()})
	}
	method abatidosSumando(cantidad){
		return abatidos.map({a=>
			a+cantidad;
		})
	}
	method abatidosEsAcotada(n1,n2){
		return abatidos.count({c=>c.between(n1,n2)})
		== abatidos.size();
	}
	method algunDiaAbatioMasDe(cantidad){
		return abatidos.any({a=>
			a>cantidad;
		});
	}
	method todosLosDiasAbatioMasDe(cantidad){
		return abatidos.all({a=>
			a>cantidad;
		});
	}
	method cantidadAbatidosMayorALaPrimera(){
		return abatidos.count({a=>
			a>abatidos.get(0);
		})
	}
	method esCrack(){
		var abatidosB = abatidos.copy()
		abatidosB.sortBy({a,b => a < b})
		return abatidos==abatidosB
		//var esCrack = false		
		/*var cont = 0;
		return abatidos.all({a=>
			a > abatidosB.get(cont)			
		})		
		/*const abatidosOrdenados = abatidos.sortBy({a,b => a < b});
		return abatidos===abatidosOrdenados*/
		/*var i = 1;
		var esCrack = false;
		abatidos.forEach({element=>
			try{
				if(element>abatidos.get(i)){
					esCrack=true;
				}			
			}catch e:Exception
			i+=1;
		});
		return esCrack;*/
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
>>> registroAbatidosCOD.diasConAbatidosSuperioresA(35)
[20221231, 20230105, 20230106, 20230108]
>>> registroAbatidosCOD.valoresDeAbatidosPares()
[18, 62]
>>> registroAbatidosCOD.abatidosSumando(2)
[45, 20, 51, 64, 35, 41]
>>> registroAbatidosCOD.abatidosEsAcotada(10,100)
true 
>>> registroAbatidosCOD.algunDiaAbatioMasDe(100)
false
>>> registroAbatidosCOD.todosLosDiasAbatioMasDe(4)
true
>>> registroAbatidosCOD.cantidadAbatidosMayorALaPrimera()
2
>>> cod.esCrack()
false
*/