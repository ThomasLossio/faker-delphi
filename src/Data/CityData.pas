unit CityData;

interface

  const
    ACRE_CITIES: array[0 .. 14] of string = (
      'Rio Branco', 'Cruzeiro do Sul', 'Sena Madureira', 'Tarauac�', 'Feij�',
      'Brasil�ia', 'Senador Guiomard', 'Pl�cido de Castro', 'Xapuri', 'Porto Acre',
      'M�ncio Lima', 'Jord�o', 'Porto Walter', 'Assis Brasil', 'Santa Rosa do Purus'
     );

     ALAGOAS_CITIES: array[0 .. 14] of string = (
      'Macei�', 'Arapiraca', 'Rio Largo', 'Palmeira dos �ndios', 'Uni�o dos Palmares',
      'Penedo', 'S�o Miguel dos Campos', 'Campo Alegre', 'Delmiro Gouveia', 'Coruripe',
      'Santana do Ipanema', 'Atalaia', 'Teot�nio Vilela', 'Girau do Ponciano', 'Murici'
     );

     AMAPA_CITIES: array[0 .. 14] of string = (
      'Macap�', 'Santana', 'Laranjal do Jari', 'Oiapoque', 'Porto Grande',
      'Mazag�o', 'Cutias', 'Pedra Branca do Amapari', 'Vit�ria do Jari', 'Cal�oene',
      'Tartarugalzinho', 'Serra do Navio', 'Pracu�ba', 'Ferreira Gomes', 'Itaubal'
     );

     AMAZONAS_CITIES: array[0 .. 14] of string = (
      'Manaus', 'Parintins', 'Itacoatiara', 'Manacapuru', 'Coari',
      'S�o Gabriel da Cachoeira', 'Benjamin Constant', 'Tabatinga', 'Autazes', 'Humait�',
      'Borba', 'S�o Paulo de Oliven�a', 'Mau�s', 'Eirunep�', 'Manaquiri'
     );

     BAHIA_CITIES: array[0 .. 14] of string = (
      'Salvador', 'Feira de Santana', 'Vit�ria da Conquista', 'Cama�ari', 'Itabuna',
      'Juazeiro', 'Lauro de Freitas', 'Ilh�us', 'Jequi�', 'Teixeira de Freitas',
      'Alagoinhas', 'Barreiras', 'Porto Seguro', 'Sim�es Filho', 'Paulo Afonso'
     );

     CEARA_CITIES: array[0 .. 14] of string = (
      'Fortaleza', 'Caucaia', 'Juazeiro do Norte', 'Maracana�', 'Sobral',
      'Crato', 'Itapipoca', 'Maranguape', 'Iguatu', 'Quixad�',
      'Pacatuba', 'Quixeramobim', 'Canind�', 'Crate�s', 'Aquiraz'
     );

     DISTRITO_FEDERAL_CITIES: array[0 .. 14] of string = (
      'Bras�lia', 'Ceil�ndia', 'Gama', 'Taguatinga', 'Samambaia',
      'Cruzeiro', 'Planaltina', 'Sobradinho', 'Santa Maria', 'Parano�',
      'Recanto das Emas', '�guas Claras', 'Riacho Fundo', 'S�o Sebasti�o', 'Lago Sul'
     );

     ESPIRITO_SANTO_CITIES: array[0 .. 14] of string = (
      'Vit�ria', 'Vila Velha', 'Serra', 'Cariacica', 'Cachoeiro de Itapemirim',
      'Linhares', 'Guarapari', 'Colatina', 'Viana', 'Nova Ven�cia',
      'Aracruz', 'S�o Mateus', 'Itapemirim', 'Barra de S�o Francisco', 'Marata�zes'
     );

     GOIAS_CITIES: array[0 .. 14] of string = (
      'Goi�nia', 'Aparecida de Goi�nia', 'An�polis', 'Rio Verde', 'Luzi�nia',
      '�guas Lindas de Goi�s', 'Valpara�so de Goi�s', 'Trindade', 'Formosa', 'Novo Gama',
      'Itumbiara', 'Senador Canedo', 'Catal�o', 'Jata�', 'Planaltina'
     );

     MARANHAO_CITIES: array[0 .. 14] of string = (
      'S�o Lu�s', 'Imperatriz', 'S�o Jos� de Ribamar', 'Timon', 'Caxias',
      'Cod�', 'Pa�o do Lumiar', 'A�ail�ndia', 'Bacabal', 'Balsas',
      'Santa In�s', 'Barra do Corda', 'Pinheiro', 'Chapadinha', 'Santa Luzia'
     );

     MATO_GROSSO_CITIES: array[0 .. 14] of string = (
      'Cuiab�', 'V�rzea Grande', 'Rondon�polis', 'Sinop', 'Tangar� da Serra',
      'C�ceres', 'Sorriso', 'Lucas do Rio Verde', 'Primavera do Leste', 'Barra do Gar�as',
      'Alta Floresta', 'Pontes e Lacerda', 'Nova Mutum', 'Campo Verde', 'Ju�na'
     );

     MATO_GROSSO_DO_SUL_CITIES: array[0 .. 14] of string = (
      'Campo Grande', 'Dourados', 'Tr�s Lagoas', 'Corumb�', 'Ponta Por�',
      'Navira�', 'Nova Andradina', 'Sidrol�ndia', 'Aquidauana', 'Maracaju',
      'Amamba�', 'Rio Brilhante', 'Coxim', 'Caarap�', 'S�o Gabriel do Oeste'
     );

     MINAS_GERAIS_CITIES: array[0 .. 14] of string = (
      'Belo Horizonte', 'Uberl�ndia', 'Contagem', 'Juiz de Fora', 'Betim',
      'Montes Claros', 'Ribeir�o das Neves', 'Uberaba', 'Governador Valadares', 'Ipatinga',
      'Sete Lagoas', 'Divin�polis', 'Santa Luzia', 'Ibirit�', 'Patos de Minas'
     );

     PARA_CITIES: array[0 .. 14] of string = (
      'Bel�m', 'Ananindeua', 'Santar�m', 'Marab�', 'Castanhal',
      'Parauapebas', 'Abaetetuba', 'Camet�', 'Marituba', 'Bel�m do Par�',
      'Tucuru�', 'Itaituba', 'Santar�m Novo', 'Breves', 'Barcarena'
     );

     PARAIBA_CITIES: array[0 .. 14] of string = (
      'Jo�o Pessoa', 'Campina Grande', 'Santa Rita', 'Patos', 'Bayeux',
      'Sousa', 'Cajazeiras', 'Cabedelo', 'Guarabira', 'Campina Grande do Sul',
      'Pombal', 'Catol� do Rocha', 'Esperan�a', 'Mamanguape', 'Rio Tinto'
     );

     PARANA_CITIES: array[0 .. 14] of string = (
      'Curitiba', 'Londrina', 'Maring�', 'Ponta Grossa', 'Cascavel',
      'S�o Jos� dos Pinhais', 'Foz do Igua�u', 'Colombo', 'Guarapuava', 'Paranagu�',
      'Apucarana', 'Toledo', 'Arapongas', 'Pinhais', 'Campo Largo'
     );

     PERNAMBUCO_CITIES: array[0 .. 14] of string = (
      'Recife', 'Jaboat�o dos Guararapes', 'Olinda', 'Caruaru', 'Paulista',
      'Petrolina', 'Cabo de Santo Agostinho', 'Camaragibe', 'Garanhuns', 'Vit�ria de Santo Ant�o',
      'Igarassu', 'S�o Louren�o da Mata', 'Santa Cruz do Capibaribe', 'Abreu e Lima', 'Ipojuca'
     );

     PIAUI_CITIES: array[0 .. 14] of string = (
      'Teresina', 'Parna�ba', 'Picos', 'Campo Maior', 'Floriano',
      'Piripiri', 'Pedro II', 'Barras', 'Jos� de Freitas', 'Oeiras',
      'Uni�o', 'Miguel Alves', 'Campo Alegre do Fidalgo', 'S�o Raimundo Nonato', 'Lu�s Correia'
     );

     RIO_DE_JANEIRO_CITIES: array[0 .. 14] of string = (
      'Rio de Janeiro', 'S�o Gon�alo', 'Duque de Caxias', 'Nova Igua�u', 'Niter�i',
      'Campos dos Goytacazes', 'Belford Roxo', 'S�o Jo�o de Meriti', 'Petr�polis', 'Volta Redonda',
      'Mag�', 'Itabora�', 'Mesquita', 'Nova Friburgo', 'Barra Mansa'
     );

     RIO_GRANDE_DO_NORTE_CITIES: array[0 .. 14] of string = (
      'Natal', 'Mossor�', 'Parnamirim', 'S�o Gon�alo do Amarante', 'Cear�-Mirim',
      'Maca�ba', 'Caic�', 'A�u', 'Currais Novos', 'S�o Jos� de Mipibu',
      'Santa Cruz', 'Apodi', 'Jo�o C�mara', 'Nova Cruz', 'Assu'
     );

     RIO_GRANDE_DO_SUL_CITIES: array[0 .. 14] of string = (
      'Porto Alegre', 'Caxias do Sul', 'Pelotas', 'Canoas', 'Santa Maria',
      'Gravata�', 'Viam�o', 'Novo Hamburgo', 'S�o Leopoldo', 'Rio Grande',
      'Alvorada', 'Passo Fundo', 'Sapucaia do Sul', 'Uruguaiana', 'Santa Cruz do Sul'
     );

     RONDONIA_CITIES: array[0 .. 14] of string = (
      'Porto Velho', 'Ji-Paran�', 'Ariquemes', 'Vilhena', 'Cacoal',
      'Guajar�-Mirim', 'Jaru', 'Rolim de Moura', 'Pimenta Bueno', 'Buritis',
      'Ouro Preto do Oeste', 'Nova Mamor�', 'Machadinho d''Oeste', 'Espig�o d''Oeste', 'Alta Floresta d''Oeste'
     );

     RORAIMA_CITIES: array[0 .. 14] of string = (
      'Boa Vista', 'Rorain�polis', 'Caracara�', 'Pacaraima', 'Mucaja�',
      'S�o Luiz', 'Alto Alegre', 'Amajari', 'Bonfim', 'Cant�',
      'Normandia', 'Uiramut�', 'Iracema', 'Caroebe', 'S�o Jo�o da Baliza'
     );

     SANTA_CATARINA_CITIES: array[0 .. 14] of string = (
      'Florian�polis', 'Joinville', 'Blumenau', 'S�o Jos�', 'Crici�ma',
      'Chapec�', 'Itaja�', 'Jaragu� do Sul', 'Palho�a', 'Lages',
      'Balne�rio Cambori�', 'Brusque', 'Tubar�o', 'S�o Bento do Sul', 'Ca�ador'
     );

     SAO_PAULO_CITIES: array[0 .. 14] of string = (
      'S�o Paulo', 'Guarulhos', 'Campinas', 'S�o Bernardo do Campo', 'Santo Andr�',
      'Osasco', 'Sorocaba', 'Ribeir�o Preto', 'Santos', 'Mau�',
      'S�o Jos� dos Campos', 'Mogi das Cruzes', 'Diadema', 'Jundia�', 'Piracicaba'
     );

     SERGIPE_CITIES: array[0 .. 14] of string = (
      'Aracaju', 'Nossa Senhora do Socorro', 'Lagarto', 'Itabaiana', 'S�o Crist�v�o',
      'Est�ncia', 'Tobias Barreto', 'Itabaianinha', 'Sim�o Dias', 'Nossa Senhora da Gl�ria',
      'Po�o Redondo', 'Capela', 'Propri�', 'Canind� de S�o Francisco', 'Umba�ba'
     );

     TOCANTINS_CITIES: array[0 .. 14] of string = (
      'Palmas', 'Aragua�na', 'Gurupi', 'Porto Nacional', 'Para�so do Tocantins',
      'Colinas do Tocantins', 'Araguatins', 'Guara�', 'Formoso do Araguaia', 'Tocantin�polis',
      'Dian�polis', 'Miracema do Tocantins', 'Xambio�', 'Augustin�polis', 'Wanderl�ndia'
     );

implementation

end.
