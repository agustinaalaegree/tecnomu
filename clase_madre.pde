class Madre {
Inicio inicio;
Gatitos gatitos;
Desarrollo desarrollo;
Carteles carteles;
Creditos creditos;

}


void Madre (){
    inicio = new Inicio();
    gatitos = new Gatitos();
    desarrollo = new Desarrollo();
    carteles = new Carteles();
    creditos = new Creditos();

}

void actualizar() {
inicio.actualizar();
    inicio.mover();

}

void dibujar(){
    inicio.dibujar();

}
