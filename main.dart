class Criatura {
  String nome;
  
  Criatura(this.nome);
  
  void respirar(){
    print("Classe: $nome, método: Respirar");
  }
}

class Ave extends Criatura {
  String cor;
  
  Ave(nome, this.cor) : super(nome);
  
  void voar(){
    print("Classe: Ave, método: Voar");
  }
}

class Papagaio extends Ave {
  Papagaio(nome, String cor) : super(nome, cor);

  void cantar(){
    print("Classe: Papagaio, método: Cantar");
  }
}

class Pato extends Ave {
  Pato(nome, String cor) : super(nome, cor);
  
  void nadar(){
    print("Classe: Pato, método: Nadar");
  }
}

class Inseto extends Criatura {
    Inseto(nome) : super(nome);
    void polenizar(){
      print("Classe: Inseto, método: Polenizar");
    }
}

class Humano extends Criatura {
    Humano(nome) : super(nome);
    void nadar(){
      print("Classe: Humano, método: Nadar");
    }
    void escrever(){
      print("Classe: Humano, método: Escrever");
    }
    void falar(){
      print("Classe: Humano, método: Falar");
    }
}

class Peixe extends Criatura {
    Peixe(nome) : super(nome);
    void nadar(){
      print("Classe: Peixe, método: Nadar");
    }
}

class Baleia extends Peixe {
    Baleia(nome) : super(nome);
    void amamentar(){
      print("Classe: Baleia, método: Amamentar");
    }
}

class PeixeVoador extends Peixe {
    PeixeVoador(nome) : super(nome);
    void nadar(){
      print("Classe: Peixe Voador, método: Nadar");
    }
}

void main() {
  var passaro = Ave("Ave", "Azul");
  var papagaio = Papagaio("Papagaio", "Vermelho");
  var pato = Pato("Pato", "Amarelo");
  var inseto = Inseto("Inseto");
  var humano = Humano("Humano");
  var peixe = Peixe("Peixe");
  var baleia = Baleia("Baleia");
  var peixeVoador = PeixeVoador("Peixe Voador");
  
  print("---Aves---\n");
  passaro.respirar();
  passaro.voar();
  print("\n---Fim das Aves---\n");
  
  print("---Papagaio---\n");
  papagaio.respirar();
  papagaio.voar();
  papagaio.cantar();
  print("\n---Fim do Papagaio---\n");
  
  print("---Pato---\n");
  pato.respirar();
  pato.voar();
  pato.nadar();
  print("\n---Fim do Pato---\n");
  
  print("---Inseto---\n");
  inseto.respirar();
  inseto.polenizar();
  print("\n---Fim do Inseto---\n");
  
  print("---Humano---\n");
  humano.falar();
  humano.nadar();
  humano.escrever();
  print("\n---Fim do Humano---\n");
  
  print("---Peixe---\n");
  peixe.respirar();
  peixe.nadar();
  print("\n---Fim do Peixe---\n");
  
  print("---Baleia---\n");
  baleia.respirar();
  baleia.nadar();
  baleia.amamentar();
  print("\n---Fim do Baleia---\n");
  
  print("---Peixe Voador---\n");
  peixeVoador.respirar();
  peixeVoador.nadar();
  print("\n---Fim do Peixe Voador---\n");
}
