unit LocationData;

interface
  const
    ADDRESS_PREFIXES: array [0 .. 5] of string = (
      'Rua', 'Avenida', 'Travessa', 'Alameda', 'Marginal', 'Rodovia'
    );

    ADDRESS_SUFFIXES: array[0..75] of string = (
      'da Amizade', 'dos Girass�is', 'das Ac�cias', 'das Margaridas', 'das Orqu�deas',
      'das Cam�lias', 'dos Jasmins', 'dos L�rios', 'dos Cravos', 'dos Narcisos',
      'das Violetas', 'das Rosas', 'das Hort�nsias', 'das Magn�lias', 'das Papoilas',
      'das Azal�ias', 'das Beg�nias', 'das D�lias', 'das Flores', 'das Tulipas',
      'das Brom�lias', 'dos Jardins', 'das Palmeiras', 'dos Ip�s Amarelos', 'das Oliveiras',
      'das Hort�ncias', 'das Margaridas', 'dos Jasmims', 'das Papoilas', 'dos Cris�ntemos',
      'dos Ant�rios', 'das Azal�ias', 'das Magn�lias', 'das Rosas', 'dos Ger�nios',
      'dos Ip�s', 'dos Jacarand�s', 'dos P�ssaros', 'dos Ventos', 'dos Eucaliptos',
      'dos Pinheiros', 'dos Coqueiros', 'dos Ciprestes', 'dos Jequitib�s', 'dos Ara��s',
      'dos Abacaxis', 'dos Abacateiros', 'dos Anjos', 'dos Arcos', 'dos Passarinhos',
      'dos Pintassilgos', 'dos Tucanos', 'dos Papagaios', 'dos Beija-flores', 'dos Sabi�s',
      'dos Can�rios', 'dos Rouxin�is', 'dos Gavi�es', 'dos Falc�es', 'dos Pardais',
      'dos Pav�es', 'dos Perus', 'dos Urubus', 'dos Patos', 'dos Gansos', 'dos Cisnes',
      'dos Colibris', 'dos Marrecos', 'dos Pelicanos', 'dos Flamingos', 'dos Avestruzes',
      'dos Fais�es', 'dos Pinguins', 'dos Pombos', 'dos Cardeais', 'dos Corvos'
    );

    // Normally the address does not have this Sufix, so I added more '' to increase the chance
    ADDRESS_NUMBER_SUFFIXES: array [0 .. 4] of string = (
      '', 'A', '', 'B', ''
    );

    NEIGHBORHOODS: array[0..104] of string = (
      'Centro', 'Jardim Am�rica', 'Vila Nova', 'Alto da Boa Vista', 'Santa Felicidade',
      'Vila Mariana', 'Barra Funda', 'Morumbi', 'Vila Madalena', 'Ipanema',
      'Copacabana', 'Leblon', 'Botafogo', 'Tijuca', 'Lapa',
      'Moema', 'Pinheiros', 'Campo Grande', 'Brooklin', 'Laranjeiras',
      'Flamengo', 'G�vea', 'Icara�', 'Itaim Bibi', 'Perdizes',
      'S�o Francisco', 'Bela Vista', 'Limoeiro', 'Cidade Nova', 'S�o Judas Tadeu',
      'Vila Oper�ria', 'Jardim Bot�nico', 'Parque Industrial', 'Parque das Na��es', 'Vila Industrial',
      'Santo Ant�nio', 'Nova Esperan�a', 'Parque S�o Paulo', 'S�o Jos�', 'S�o Pedro',
      'Jardim S�o Paulo', 'Jardim Primavera', 'Jardim Am�rica', 'Jardim das Flores', 'Jardim das Palmeiras',
      'Jardim das Ac�cias', 'Jardim das Oliveiras', 'Jardim dos Ip�s', 'Jardim das Hort�nsias', 'Jardim das Rosas',
      'Vila S�o Paulo', 'Vila S�o Jos�', 'Vila S�o Pedro', 'Vila S�o Francisco', 'Vila S�o Judas',
      'Vila Jardim', 'Vila Primavera', 'Vila Am�rica', 'Vila das Flores', 'Vila das Palmeiras',
      'Vila das Ac�cias', 'Vila das Oliveiras', 'Vila dos Ip�s', 'Vila das Hort�nsias', 'Vila das Rosas',
      'Alto S�o Paulo', 'Alto S�o Jos�', 'Alto S�o Pedro', 'Alto S�o Francisco', 'Alto S�o Judas',
      'Alto Jardim', 'Alto Primavera', 'Alto Am�rica', 'Alto das Flores', 'Alto das Palmeiras',
      'Alto das Ac�cias', 'Alto das Oliveiras', 'Alto dos Ip�s', 'Alto das Hort�nsias', 'Alto das Rosas',
      'Parque S�o Paulo II', 'Parque S�o Jos� II', 'Parque S�o Pedro II', 'Parque S�o Francisco II', 'Parque S�o Judas II',
      'Parque Jardim II', 'Parque Primavera II', 'Parque Am�rica II', 'Parque das Flores II', 'Parque das Palmeiras II',
      'Parque das Ac�cias II', 'Parque das Oliveiras II', 'Parque dos Ip�s II', 'Parque das Hort�nsias II', 'Parque das Rosas II',
      'Jardim S�o Paulo II', 'Jardim Primavera II', 'Jardim Am�rica II', 'Jardim das Flores II', 'Jardim das Palmeiras II',
      'Jardim das Ac�cias II', 'Jardim das Oliveiras II', 'Jardim dos Ip�s II', 'Jardim das Hort�nsias II', 'Jardim das Rosas II'
    );

    // Normally the address does not have this Complement, so I added more '' to increase the chance
    ADDRESS_COMPLEMENTS: array [0 .. 23] of string = (
      '', 'Apto', 'Bloco', 'Casa', 'Cond.', 'Lote',
      'Sala', 'Loja', 'Galeria', 'Andar', 'T�rreo', '',
      '', 'Sobrado', 'Kitnet', 'Ed.', 'Pr�dio', 'Quadra',
      'Lt.', 'Ponto', 'Fundos', 'Faz.', 'S�tio', ''
    );

    COUNTRIES: array[0..174] of string = (
      'Afeganist�o', 'Alb�nia', 'Alemanha', 'Estados Unidos', 'Andorra',
      'Angola', 'Arg�lia', 'Argentina', 'Arm�nia', 'Austr�lia',
      '�ustria', 'Azerbaij�o', 'Bahamas', 'Bahrain', 'Bangladesh',
      'Barbados', 'B�lgica', 'Belize', 'Benin', 'Bielorr�ssia',
      'Birm�nia', 'Bol�via', 'B�snia e Herzegovina', 'Botsuana', 'Brasil',
      'Reino Unido', 'Brunei', 'Bulg�ria', 'Burkina Faso', 'Burundi',
      'But�o', 'Cabo Verde', 'Camar�es', 'Canad�', 'Catar',
      'Cazaquist�o', 'Chade', 'Chile', 'China', 'Sri Lanka',
      'Chipre', 'Col�mbia', 'Comores', 'Congo', 'Costa Rica',
      'Cro�cia', 'Cuba', 'Dinamarca', 'Djibouti', 'Rep�blica Dominicana',
      'Egito', 'Emirados �rabes Unidos', 'Equador', 'Eritreia', 'Eslov�quia',
      'Eslov�nia', 'Espanha', 'Est�nia', 'Eti�pia', 'Fiji',
      'Filipinas', 'Finl�ndia', 'Fran�a', 'Gab�o', 'G�mbia',
      'Ge�rgia', 'Gana', 'Granada', 'Gr�cia', 'Guatemala',
      'Guiana', 'Guin�', 'Guin�-Bissau', 'Haiti', 'Pa�ses Baixos',
      'Honduras', 'Hungria', 'I�men', '�ndia', 'Indon�sia',
      'Ir�', 'Iraque', 'Irlanda', 'Isl�ndia', 'Israel',
      'It�lia', 'Jamaica', 'Jap�o', 'Jord�nia', 'Laos',
      'Let�nia', 'L�bano', 'Lib�ria', 'L�bia', 'Liechtenstein',
      'Litu�nia', 'Luxemburgo', 'Maced�nia', 'Madagascar', 'Mal�sia',
      'Malawi', 'Maldivas', 'Mali', 'Malta', 'Marrocos',
      'Ilhas Marshall', 'Maur�cio', 'Maurit�nia', 'M�xico', 'Micron�sia',
      'Mo�ambique', 'Mold�via', 'M�naco', 'Mong�lia', 'Montenegro',
      'Nam�bia', 'Nauru', 'Nepal', 'Nicar�gua', 'N�ger',
      'Nig�ria', 'Noruega', 'Nova Zel�ndia', 'Om�', 'Palau',
      'Panam�', 'Papua Nova Guin�', 'Paquist�o', 'Paraguai', 'Peru',
      'Pol�nia', 'Portugal', 'Qu�nia', 'Quirguist�o', 'Ruanda',
      'Rom�nia', 'R�ssia', 'Ilhas Salom�o', 'El Salvador', 'Samoa',
      'S�o Tom� e Pr�ncipe', 'S�o Vicente e Granadinas', 'Senegal', 'S�rvia', 'Seychelles',
      'Serra Leoa', 'S�ria', 'Som�lia', '�frica do Sul', 'Coreia do Sul',
      'Sud�o do Sul', 'Su�cia', 'Su��a', 'Suriname', 'Tail�ndia',
      'Taiwan', 'Tajiquist�o', 'Tanz�nia', 'Timor-Leste', 'Togo',
      'Tonga', 'Trinidad e Tobago', 'Tun�sia', 'Turcomenist�o', 'Turquia',
      'Tuvalu', 'Ucr�nia', 'Uganda', 'Uruguai', 'Uzbequist�o',
      'Vanuatu', 'Venezuela', 'Vietn�', 'Z�mbia', 'Zimb�bue'
    );

    NATIONALITIES: array[0..174] of string = (
      'Afeg�o', 'Alban�s', 'Alem�o', 'Americano', 'Andorrano',
      'Angolano', 'Argelino', 'Argentino', 'Arm�nio', 'Australiano',
      'Austr�aco', 'Azerbaijano', 'Bahamense', 'Bahrainiano', 'Bangladeshi',
      'Barbadian', 'Belga', 'Belizenho', 'Beninense', 'Bielorrusso',
      'Birman�s', 'Boliviano', 'B�snio', 'Botsuan�s', 'Brasileiro',
      'Brit�nico', 'Bruneiano', 'B�lgaro', 'Burquin�s', 'Burundiano',
      'Butan�s', 'Cabo-verdiano', 'Camaron�s', 'Canadense', 'Catariano',
      'Cazaque', 'Chadiano', 'Chileno', 'Chin�s', 'Cingal�s',
      'Cipriota', 'Colombiano', 'Comorense', 'Congol�s', 'Costa-riquenho',
      'Croata', 'Cubano', 'Dinamarqu�s', 'Djiboutian', 'Dominicano',
      'Eg�pcio', 'Emirati', 'Equatoriano', 'Eritreano', 'Eslovaco',
      'Esloveno', 'Espanhol', 'Est�nio', 'Et�ope', 'Fijiano',
      'Filipino', 'Finland�s', 'Franc�s', 'Gabon�s', 'Gambiano',
      'Georgiano', 'Ghanense', 'Granadino', 'Grego', 'Guatemalteco',
      'Guianense', 'Guin�u', 'Guin�u-Bissau', 'Haitiano', 'Holand�s',
      'Hondurenho', 'H�ngaro', 'Iemenita', 'Indiano', 'Indon�sio',
      'Iraniano', 'Iraquiano', 'Irland�s', 'Island�s', 'Israelense',
      'Italiano', 'Jamaicano', 'Japon�s', 'Jordano', 'Laosiano',
      'Let�o', 'Liban�s', 'Liberiano', 'L�bio', 'Liechtenstein',
      'Lituano', 'Luxemburgu�s', 'Maced�nio', 'Malgaxe', 'Malaio',
      'Malaui', 'Mald�vio', 'Maliano', 'Malt�s', 'Marroquino',
      'Marshal�s', 'Mauriciano', 'Mauritano', 'Mexicano', 'Micron�sio',
      'Mo�ambicano', 'Moldavo', 'Monegasco', 'Mongol', 'Montenegrino',
      'Namibiano', 'Nauruano', 'Nepal�s', 'Nicaraguense', 'Nigerino',
      'Nigeriano', 'Noruegu�s', 'Neozeland�s', 'Omanense', 'Palauense',
      'Panamenho', 'Papu�sio', 'Paquistan�s', 'Paraguaio', 'Peruano',
      'Polon�s', 'Portugu�s', 'Queniano', 'Quirguiz', 'Ruand�s',
      'Romeno', 'Russo', 'Salom�nico', 'Salvadorenho', 'Samoano',
      'S�o-tomense', 'S�o-vicentino', 'Senegal�s', 'S�rvio', 'Seichelense',
      'Serra-leon�s', 'S�rio', 'Somali', 'Sul-africano', 'Sul-coreano',
      'Sul-sudan�s', 'Sueco', 'Su��o', 'Surinam�s', 'Tailand�s',
      'Taiwan�s', 'Tajique', 'Tanzaniano', 'Timorense', 'Togol�s',
      'Tonganes', 'Trindadense', 'Tunisiano', 'Turcomeno', 'Turco',
      'Tuvaluano', 'Ucraniano', 'Ugandense', 'Uruguaio', 'Usbeque',
      'Vanuatuense', 'Venezuelano', 'Vietnamita', 'Zambiano', 'Zimbabuense'
    );

implementation

end.

