unit CityData;

interface

  const
    ACRE_CITIES: array[0 .. 14] of string = (
      'Rio Branco', 'Cruzeiro do Sul', 'Sena Madureira', 'Tarauacá', 'Feijó',
      'Brasiléia', 'Senador Guiomard', 'Plácido de Castro', 'Xapuri', 'Porto Acre',
      'Mâncio Lima', 'Jordão', 'Porto Walter', 'Assis Brasil', 'Santa Rosa do Purus'
     );

     ALAGOAS_CITIES: array[0 .. 14] of string = (
      'Maceió', 'Arapiraca', 'Rio Largo', 'Palmeira dos Índios', 'União dos Palmares',
      'Penedo', 'São Miguel dos Campos', 'Campo Alegre', 'Delmiro Gouveia', 'Coruripe',
      'Santana do Ipanema', 'Atalaia', 'Teotônio Vilela', 'Girau do Ponciano', 'Murici'
     );

     AMAPA_CITIES: array[0 .. 14] of string = (
      'Macapá', 'Santana', 'Laranjal do Jari', 'Oiapoque', 'Porto Grande',
      'Mazagão', 'Cutias', 'Pedra Branca do Amapari', 'Vitória do Jari', 'Calçoene',
      'Tartarugalzinho', 'Serra do Navio', 'Pracuúba', 'Ferreira Gomes', 'Itaubal'
     );

     AMAZONAS_CITIES: array[0 .. 14] of string = (
      'Manaus', 'Parintins', 'Itacoatiara', 'Manacapuru', 'Coari',
      'São Gabriel da Cachoeira', 'Benjamin Constant', 'Tabatinga', 'Autazes', 'Humaitá',
      'Borba', 'São Paulo de Olivença', 'Maués', 'Eirunepé', 'Manaquiri'
     );

     BAHIA_CITIES: array[0 .. 14] of string = (
      'Salvador', 'Feira de Santana', 'Vitória da Conquista', 'Camaçari', 'Itabuna',
      'Juazeiro', 'Lauro de Freitas', 'Ilhéus', 'Jequié', 'Teixeira de Freitas',
      'Alagoinhas', 'Barreiras', 'Porto Seguro', 'Simões Filho', 'Paulo Afonso'
     );

     CEARA_CITIES: array[0 .. 14] of string = (
      'Fortaleza', 'Caucaia', 'Juazeiro do Norte', 'Maracanaú', 'Sobral',
      'Crato', 'Itapipoca', 'Maranguape', 'Iguatu', 'Quixadá',
      'Pacatuba', 'Quixeramobim', 'Canindé', 'Crateús', 'Aquiraz'
     );

     DISTRITO_FEDERAL_CITIES: array[0 .. 14] of string = (
      'Brasília', 'Ceilândia', 'Gama', 'Taguatinga', 'Samambaia',
      'Cruzeiro', 'Planaltina', 'Sobradinho', 'Santa Maria', 'Paranoá',
      'Recanto das Emas', 'Águas Claras', 'Riacho Fundo', 'São Sebastião', 'Lago Sul'
     );

     ESPIRITO_SANTO_CITIES: array[0 .. 14] of string = (
      'Vitória', 'Vila Velha', 'Serra', 'Cariacica', 'Cachoeiro de Itapemirim',
      'Linhares', 'Guarapari', 'Colatina', 'Viana', 'Nova Venécia',
      'Aracruz', 'São Mateus', 'Itapemirim', 'Barra de São Francisco', 'Marataízes'
     );

     GOIAS_CITIES: array[0 .. 14] of string = (
      'Goiânia', 'Aparecida de Goiânia', 'Anápolis', 'Rio Verde', 'Luziânia',
      'Águas Lindas de Goiás', 'Valparaíso de Goiás', 'Trindade', 'Formosa', 'Novo Gama',
      'Itumbiara', 'Senador Canedo', 'Catalão', 'Jataí', 'Planaltina'
     );

     MARANHAO_CITIES: array[0 .. 14] of string = (
      'São Luís', 'Imperatriz', 'São José de Ribamar', 'Timon', 'Caxias',
      'Codó', 'Paço do Lumiar', 'Açailândia', 'Bacabal', 'Balsas',
      'Santa Inês', 'Barra do Corda', 'Pinheiro', 'Chapadinha', 'Santa Luzia'
     );

     MATO_GROSSO_CITIES: array[0 .. 14] of string = (
      'Cuiabá', 'Várzea Grande', 'Rondonópolis', 'Sinop', 'Tangará da Serra',
      'Cáceres', 'Sorriso', 'Lucas do Rio Verde', 'Primavera do Leste', 'Barra do Garças',
      'Alta Floresta', 'Pontes e Lacerda', 'Nova Mutum', 'Campo Verde', 'Juína'
     );

     MATO_GROSSO_DO_SUL_CITIES: array[0 .. 14] of string = (
      'Campo Grande', 'Dourados', 'Três Lagoas', 'Corumbá', 'Ponta Porã',
      'Naviraí', 'Nova Andradina', 'Sidrolândia', 'Aquidauana', 'Maracaju',
      'Amambaí', 'Rio Brilhante', 'Coxim', 'Caarapó', 'São Gabriel do Oeste'
     );

     MINAS_GERAIS_CITIES: array[0 .. 14] of string = (
      'Belo Horizonte', 'Uberlândia', 'Contagem', 'Juiz de Fora', 'Betim',
      'Montes Claros', 'Ribeirão das Neves', 'Uberaba', 'Governador Valadares', 'Ipatinga',
      'Sete Lagoas', 'Divinópolis', 'Santa Luzia', 'Ibirité', 'Patos de Minas'
     );

     PARA_CITIES: array[0 .. 14] of string = (
      'Belém', 'Ananindeua', 'Santarém', 'Marabá', 'Castanhal',
      'Parauapebas', 'Abaetetuba', 'Cametá', 'Marituba', 'Belém do Pará',
      'Tucuruí', 'Itaituba', 'Santarém Novo', 'Breves', 'Barcarena'
     );

     PARAIBA_CITIES: array[0 .. 14] of string = (
      'João Pessoa', 'Campina Grande', 'Santa Rita', 'Patos', 'Bayeux',
      'Sousa', 'Cajazeiras', 'Cabedelo', 'Guarabira', 'Campina Grande do Sul',
      'Pombal', 'Catolé do Rocha', 'Esperança', 'Mamanguape', 'Rio Tinto'
     );

     PARANA_CITIES: array[0 .. 14] of string = (
      'Curitiba', 'Londrina', 'Maringá', 'Ponta Grossa', 'Cascavel',
      'São José dos Pinhais', 'Foz do Iguaçu', 'Colombo', 'Guarapuava', 'Paranaguá',
      'Apucarana', 'Toledo', 'Arapongas', 'Pinhais', 'Campo Largo'
     );

     PERNAMBUCO_CITIES: array[0 .. 14] of string = (
      'Recife', 'Jaboatão dos Guararapes', 'Olinda', 'Caruaru', 'Paulista',
      'Petrolina', 'Cabo de Santo Agostinho', 'Camaragibe', 'Garanhuns', 'Vitória de Santo Antão',
      'Igarassu', 'São Lourenço da Mata', 'Santa Cruz do Capibaribe', 'Abreu e Lima', 'Ipojuca'
     );

     PIAUI_CITIES: array[0 .. 14] of string = (
      'Teresina', 'Parnaíba', 'Picos', 'Campo Maior', 'Floriano',
      'Piripiri', 'Pedro II', 'Barras', 'José de Freitas', 'Oeiras',
      'União', 'Miguel Alves', 'Campo Alegre do Fidalgo', 'São Raimundo Nonato', 'Luís Correia'
     );

     RIO_DE_JANEIRO_CITIES: array[0 .. 14] of string = (
      'Rio de Janeiro', 'São Gonçalo', 'Duque de Caxias', 'Nova Iguaçu', 'Niterói',
      'Campos dos Goytacazes', 'Belford Roxo', 'São João de Meriti', 'Petrópolis', 'Volta Redonda',
      'Magé', 'Itaboraí', 'Mesquita', 'Nova Friburgo', 'Barra Mansa'
     );

     RIO_GRANDE_DO_NORTE_CITIES: array[0 .. 14] of string = (
      'Natal', 'Mossoró', 'Parnamirim', 'São Gonçalo do Amarante', 'Ceará-Mirim',
      'Macaíba', 'Caicó', 'Açu', 'Currais Novos', 'São José de Mipibu',
      'Santa Cruz', 'Apodi', 'João Câmara', 'Nova Cruz', 'Assu'
     );

     RIO_GRANDE_DO_SUL_CITIES: array[0 .. 14] of string = (
      'Porto Alegre', 'Caxias do Sul', 'Pelotas', 'Canoas', 'Santa Maria',
      'Gravataí', 'Viamão', 'Novo Hamburgo', 'São Leopoldo', 'Rio Grande',
      'Alvorada', 'Passo Fundo', 'Sapucaia do Sul', 'Uruguaiana', 'Santa Cruz do Sul'
     );

     RONDONIA_CITIES: array[0 .. 14] of string = (
      'Porto Velho', 'Ji-Paraná', 'Ariquemes', 'Vilhena', 'Cacoal',
      'Guajará-Mirim', 'Jaru', 'Rolim de Moura', 'Pimenta Bueno', 'Buritis',
      'Ouro Preto do Oeste', 'Nova Mamoré', 'Machadinho d''Oeste', 'Espigão d''Oeste', 'Alta Floresta d''Oeste'
     );

     RORAIMA_CITIES: array[0 .. 14] of string = (
      'Boa Vista', 'Rorainópolis', 'Caracaraí', 'Pacaraima', 'Mucajaí',
      'São Luiz', 'Alto Alegre', 'Amajari', 'Bonfim', 'Cantá',
      'Normandia', 'Uiramutã', 'Iracema', 'Caroebe', 'São João da Baliza'
     );

     SANTA_CATARINA_CITIES: array[0 .. 14] of string = (
      'Florianópolis', 'Joinville', 'Blumenau', 'São José', 'Criciúma',
      'Chapecó', 'Itajaí', 'Jaraguá do Sul', 'Palhoça', 'Lages',
      'Balneário Camboriú', 'Brusque', 'Tubarão', 'São Bento do Sul', 'Caçador'
     );

     SAO_PAULO_CITIES: array[0 .. 14] of string = (
      'São Paulo', 'Guarulhos', 'Campinas', 'São Bernardo do Campo', 'Santo André',
      'Osasco', 'Sorocaba', 'Ribeirão Preto', 'Santos', 'Mauá',
      'São José dos Campos', 'Mogi das Cruzes', 'Diadema', 'Jundiaí', 'Piracicaba'
     );

     SERGIPE_CITIES: array[0 .. 14] of string = (
      'Aracaju', 'Nossa Senhora do Socorro', 'Lagarto', 'Itabaiana', 'São Cristóvão',
      'Estância', 'Tobias Barreto', 'Itabaianinha', 'Simão Dias', 'Nossa Senhora da Glória',
      'Poço Redondo', 'Capela', 'Propriá', 'Canindé de São Francisco', 'Umbaúba'
     );

     TOCANTINS_CITIES: array[0 .. 14] of string = (
      'Palmas', 'Araguaína', 'Gurupi', 'Porto Nacional', 'Paraíso do Tocantins',
      'Colinas do Tocantins', 'Araguatins', 'Guaraí', 'Formoso do Araguaia', 'Tocantinópolis',
      'Dianópolis', 'Miracema do Tocantins', 'Xambioá', 'Augustinópolis', 'Wanderlândia'
     );

implementation

end.
