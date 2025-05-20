unit LocationData;

interface
  const
    ADDRESS_PREFIXES: array [0 .. 5] of string = (
      'Rua', 'Avenida', 'Travessa', 'Alameda', 'Marginal', 'Rodovia'
    );

    ADDRESS_SUFFIXES: array[0..75] of string = (
      'da Amizade', 'dos Girassóis', 'das Acácias', 'das Margaridas', 'das Orquídeas',
      'das Camélias', 'dos Jasmins', 'dos Lírios', 'dos Cravos', 'dos Narcisos',
      'das Violetas', 'das Rosas', 'das Hortênsias', 'das Magnólias', 'das Papoilas',
      'das Azaléias', 'das Begônias', 'das Dálias', 'das Flores', 'das Tulipas',
      'das Bromélias', 'dos Jardins', 'das Palmeiras', 'dos Ipês Amarelos', 'das Oliveiras',
      'das Hortências', 'das Margaridas', 'dos Jasmims', 'das Papoilas', 'dos Crisântemos',
      'dos Antúrios', 'das Azaléias', 'das Magnólias', 'das Rosas', 'dos Gerânios',
      'dos Ipês', 'dos Jacarandás', 'dos Pássaros', 'dos Ventos', 'dos Eucaliptos',
      'dos Pinheiros', 'dos Coqueiros', 'dos Ciprestes', 'dos Jequitibás', 'dos Araçás',
      'dos Abacaxis', 'dos Abacateiros', 'dos Anjos', 'dos Arcos', 'dos Passarinhos',
      'dos Pintassilgos', 'dos Tucanos', 'dos Papagaios', 'dos Beija-flores', 'dos Sabiás',
      'dos Canários', 'dos Rouxinóis', 'dos Gaviões', 'dos Falcões', 'dos Pardais',
      'dos Pavões', 'dos Perus', 'dos Urubus', 'dos Patos', 'dos Gansos', 'dos Cisnes',
      'dos Colibris', 'dos Marrecos', 'dos Pelicanos', 'dos Flamingos', 'dos Avestruzes',
      'dos Faisões', 'dos Pinguins', 'dos Pombos', 'dos Cardeais', 'dos Corvos'
    );

    // Normally the address does not have this Sufix, so I added more '' to increase the chance
    ADDRESS_NUMBER_SUFFIXES: array [0 .. 4] of string = (
      '', 'A', '', 'B', ''
    );

    NEIGHBORHOODS: array[0..104] of string = (
      'Centro', 'Jardim América', 'Vila Nova', 'Alto da Boa Vista', 'Santa Felicidade',
      'Vila Mariana', 'Barra Funda', 'Morumbi', 'Vila Madalena', 'Ipanema',
      'Copacabana', 'Leblon', 'Botafogo', 'Tijuca', 'Lapa',
      'Moema', 'Pinheiros', 'Campo Grande', 'Brooklin', 'Laranjeiras',
      'Flamengo', 'Gávea', 'Icaraí', 'Itaim Bibi', 'Perdizes',
      'São Francisco', 'Bela Vista', 'Limoeiro', 'Cidade Nova', 'São Judas Tadeu',
      'Vila Operária', 'Jardim Botânico', 'Parque Industrial', 'Parque das Nações', 'Vila Industrial',
      'Santo Antônio', 'Nova Esperança', 'Parque São Paulo', 'São José', 'São Pedro',
      'Jardim São Paulo', 'Jardim Primavera', 'Jardim América', 'Jardim das Flores', 'Jardim das Palmeiras',
      'Jardim das Acácias', 'Jardim das Oliveiras', 'Jardim dos Ipês', 'Jardim das Hortênsias', 'Jardim das Rosas',
      'Vila São Paulo', 'Vila São José', 'Vila São Pedro', 'Vila São Francisco', 'Vila São Judas',
      'Vila Jardim', 'Vila Primavera', 'Vila América', 'Vila das Flores', 'Vila das Palmeiras',
      'Vila das Acácias', 'Vila das Oliveiras', 'Vila dos Ipês', 'Vila das Hortênsias', 'Vila das Rosas',
      'Alto São Paulo', 'Alto São José', 'Alto São Pedro', 'Alto São Francisco', 'Alto São Judas',
      'Alto Jardim', 'Alto Primavera', 'Alto América', 'Alto das Flores', 'Alto das Palmeiras',
      'Alto das Acácias', 'Alto das Oliveiras', 'Alto dos Ipês', 'Alto das Hortênsias', 'Alto das Rosas',
      'Parque São Paulo II', 'Parque São José II', 'Parque São Pedro II', 'Parque São Francisco II', 'Parque São Judas II',
      'Parque Jardim II', 'Parque Primavera II', 'Parque América II', 'Parque das Flores II', 'Parque das Palmeiras II',
      'Parque das Acácias II', 'Parque das Oliveiras II', 'Parque dos Ipês II', 'Parque das Hortênsias II', 'Parque das Rosas II',
      'Jardim São Paulo II', 'Jardim Primavera II', 'Jardim América II', 'Jardim das Flores II', 'Jardim das Palmeiras II',
      'Jardim das Acácias II', 'Jardim das Oliveiras II', 'Jardim dos Ipês II', 'Jardim das Hortênsias II', 'Jardim das Rosas II'
    );

    // Normally the address does not have this Complement, so I added more '' to increase the chance
    ADDRESS_COMPLEMENTS: array [0 .. 23] of string = (
      '', 'Apto', 'Bloco', 'Casa', 'Cond.', 'Lote',
      'Sala', 'Loja', 'Galeria', 'Andar', 'Térreo', '',
      '', 'Sobrado', 'Kitnet', 'Ed.', 'Prédio', 'Quadra',
      'Lt.', 'Ponto', 'Fundos', 'Faz.', 'Sítio', ''
    );

    COUNTRIES: array[0..174] of string = (
      'Afeganistão', 'Albânia', 'Alemanha', 'Estados Unidos', 'Andorra',
      'Angola', 'Argélia', 'Argentina', 'Armênia', 'Austrália',
      'Áustria', 'Azerbaijão', 'Bahamas', 'Bahrain', 'Bangladesh',
      'Barbados', 'Bélgica', 'Belize', 'Benin', 'Bielorrússia',
      'Birmânia', 'Bolívia', 'Bósnia e Herzegovina', 'Botsuana', 'Brasil',
      'Reino Unido', 'Brunei', 'Bulgária', 'Burkina Faso', 'Burundi',
      'Butão', 'Cabo Verde', 'Camarões', 'Canadá', 'Catar',
      'Cazaquistão', 'Chade', 'Chile', 'China', 'Sri Lanka',
      'Chipre', 'Colômbia', 'Comores', 'Congo', 'Costa Rica',
      'Croácia', 'Cuba', 'Dinamarca', 'Djibouti', 'República Dominicana',
      'Egito', 'Emirados Árabes Unidos', 'Equador', 'Eritreia', 'Eslováquia',
      'Eslovênia', 'Espanha', 'Estônia', 'Etiópia', 'Fiji',
      'Filipinas', 'Finlândia', 'França', 'Gabão', 'Gâmbia',
      'Geórgia', 'Gana', 'Granada', 'Grécia', 'Guatemala',
      'Guiana', 'Guiné', 'Guiné-Bissau', 'Haiti', 'Países Baixos',
      'Honduras', 'Hungria', 'Iêmen', 'Índia', 'Indonésia',
      'Irã', 'Iraque', 'Irlanda', 'Islândia', 'Israel',
      'Itália', 'Jamaica', 'Japão', 'Jordânia', 'Laos',
      'Letônia', 'Líbano', 'Libéria', 'Líbia', 'Liechtenstein',
      'Lituânia', 'Luxemburgo', 'Macedônia', 'Madagascar', 'Malásia',
      'Malawi', 'Maldivas', 'Mali', 'Malta', 'Marrocos',
      'Ilhas Marshall', 'Maurício', 'Mauritânia', 'México', 'Micronésia',
      'Moçambique', 'Moldávia', 'Mônaco', 'Mongólia', 'Montenegro',
      'Namíbia', 'Nauru', 'Nepal', 'Nicarágua', 'Níger',
      'Nigéria', 'Noruega', 'Nova Zelândia', 'Omã', 'Palau',
      'Panamá', 'Papua Nova Guiné', 'Paquistão', 'Paraguai', 'Peru',
      'Polônia', 'Portugal', 'Quênia', 'Quirguistão', 'Ruanda',
      'Romênia', 'Rússia', 'Ilhas Salomão', 'El Salvador', 'Samoa',
      'São Tomé e Príncipe', 'São Vicente e Granadinas', 'Senegal', 'Sérvia', 'Seychelles',
      'Serra Leoa', 'Síria', 'Somália', 'África do Sul', 'Coreia do Sul',
      'Sudão do Sul', 'Suécia', 'Suíça', 'Suriname', 'Tailândia',
      'Taiwan', 'Tajiquistão', 'Tanzânia', 'Timor-Leste', 'Togo',
      'Tonga', 'Trinidad e Tobago', 'Tunísia', 'Turcomenistão', 'Turquia',
      'Tuvalu', 'Ucrânia', 'Uganda', 'Uruguai', 'Uzbequistão',
      'Vanuatu', 'Venezuela', 'Vietnã', 'Zâmbia', 'Zimbábue'
    );

    NATIONALITIES: array[0..174] of string = (
      'Afegão', 'Albanês', 'Alemão', 'Americano', 'Andorrano',
      'Angolano', 'Argelino', 'Argentino', 'Armênio', 'Australiano',
      'Austríaco', 'Azerbaijano', 'Bahamense', 'Bahrainiano', 'Bangladeshi',
      'Barbadian', 'Belga', 'Belizenho', 'Beninense', 'Bielorrusso',
      'Birmanês', 'Boliviano', 'Bósnio', 'Botsuanês', 'Brasileiro',
      'Britânico', 'Bruneiano', 'Búlgaro', 'Burquinês', 'Burundiano',
      'Butanês', 'Cabo-verdiano', 'Camaronês', 'Canadense', 'Catariano',
      'Cazaque', 'Chadiano', 'Chileno', 'Chinês', 'Cingalês',
      'Cipriota', 'Colombiano', 'Comorense', 'Congolês', 'Costa-riquenho',
      'Croata', 'Cubano', 'Dinamarquês', 'Djiboutian', 'Dominicano',
      'Egípcio', 'Emirati', 'Equatoriano', 'Eritreano', 'Eslovaco',
      'Esloveno', 'Espanhol', 'Estônio', 'Etíope', 'Fijiano',
      'Filipino', 'Finlandês', 'Francês', 'Gabonês', 'Gambiano',
      'Georgiano', 'Ghanense', 'Granadino', 'Grego', 'Guatemalteco',
      'Guianense', 'Guinéu', 'Guinéu-Bissau', 'Haitiano', 'Holandês',
      'Hondurenho', 'Húngaro', 'Iemenita', 'Indiano', 'Indonésio',
      'Iraniano', 'Iraquiano', 'Irlandês', 'Islandês', 'Israelense',
      'Italiano', 'Jamaicano', 'Japonês', 'Jordano', 'Laosiano',
      'Letão', 'Libanês', 'Liberiano', 'Líbio', 'Liechtenstein',
      'Lituano', 'Luxemburguês', 'Macedônio', 'Malgaxe', 'Malaio',
      'Malaui', 'Maldívio', 'Maliano', 'Maltês', 'Marroquino',
      'Marshalês', 'Mauriciano', 'Mauritano', 'Mexicano', 'Micronésio',
      'Moçambicano', 'Moldavo', 'Monegasco', 'Mongol', 'Montenegrino',
      'Namibiano', 'Nauruano', 'Nepalês', 'Nicaraguense', 'Nigerino',
      'Nigeriano', 'Norueguês', 'Neozelandês', 'Omanense', 'Palauense',
      'Panamenho', 'Papuásio', 'Paquistanês', 'Paraguaio', 'Peruano',
      'Polonês', 'Português', 'Queniano', 'Quirguiz', 'Ruandês',
      'Romeno', 'Russo', 'Salomônico', 'Salvadorenho', 'Samoano',
      'São-tomense', 'São-vicentino', 'Senegalês', 'Sérvio', 'Seichelense',
      'Serra-leonês', 'Sírio', 'Somali', 'Sul-africano', 'Sul-coreano',
      'Sul-sudanês', 'Sueco', 'Suíço', 'Surinamês', 'Tailandês',
      'Taiwanês', 'Tajique', 'Tanzaniano', 'Timorense', 'Togolês',
      'Tonganes', 'Trindadense', 'Tunisiano', 'Turcomeno', 'Turco',
      'Tuvaluano', 'Ucraniano', 'Ugandense', 'Uruguaio', 'Usbeque',
      'Vanuatuense', 'Venezuelano', 'Vietnamita', 'Zambiano', 'Zimbabuense'
    );

implementation

end.

