import 'package:flutter_test/flutter_test.dart';
import 'package:app_campo_minado/models/tabuleiro.dart';

main () {


 test ('Ganhar jogo', () {
   
Tabuleiro tabuleiro = Tabuleiro (
  linhas: 2,
   colunas: 2,
    qtdeMinas: 0,
    );

   // Minar campos específicos para garantir o teste
   tabuleiro.campos[0].minar(); // Campo (0,0)
   tabuleiro.campos[3].minar(); // Campo (1,1)

  tabuleiro.campos[0].alternarMarcacao(); // Marcar campo (0,0)
   tabuleiro.campos[1].abrir(); // Abrir campo (0,1)
   tabuleiro.campos[2].abrir(); // Abrir campo (1,0)
   tabuleiro.campos[3].alternarMarcacao(); // Marcar campo (1,1)

   expect(tabuleiro.resolvido, isTrue);
 });

}