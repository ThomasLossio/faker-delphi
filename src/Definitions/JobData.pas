unit JobData;

interface

type
  TJobTitle = record
    Masculino: string;
    Feminino: string;
  end;

const
  JOB_TITLES: array[0..24] of TJobTitle = (
    (Masculino: 'Supervisor';      Feminino: 'Supervisora'),
    (Masculino: 'Associado';       Feminino: 'Associada'),
    (Masculino: 'Executivo';       Feminino: 'Executiva'),
    (Masculino: 'Atendente';       Feminino: 'Atendente'),
    (Masculino: 'Policial';        Feminino: 'Policial'),
    (Masculino: 'Gerente';         Feminino: 'Gerente'),
    (Masculino: 'Engenheiro';      Feminino: 'Engenheira'),
    (Masculino: 'Especialista';    Feminino: 'Especialista'),
    (Masculino: 'Diretor';         Feminino: 'Diretora'),
    (Masculino: 'Coordenador';     Feminino: 'Coordenadora'),
    (Masculino: 'Administrador';   Feminino: 'Administradora'),
    (Masculino: 'Arquiteto';       Feminino: 'Arquiteta'),
    (Masculino: 'Analista';        Feminino: 'Analista'),
    (Masculino: 'Designer';        Feminino: 'Designer'),
    (Masculino: 'Planejador';      Feminino: 'Planejadora'),
    (Masculino: 'Orquestrador';    Feminino: 'Orquestradora'),
    (Masculino: 'Técnico';         Feminino: 'Técnica'),
    (Masculino: 'Desenvolvedor';   Feminino: 'Desenvolvedora'),
    (Masculino: 'Produtor';        Feminino: 'Produtora'),
    (Masculino: 'Consultor';       Feminino: 'Consultora'),
    (Masculino: 'Assistente';      Feminino: 'Assistente'),
    (Masculino: 'Facilitador';     Feminino: 'Facilitadora'),
    (Masculino: 'Agente';          Feminino: 'Agente'),
    (Masculino: 'Representante';   Feminino: 'Representante'),
    (Masculino: 'Estrategista';    Feminino: 'Estrategista')
  );

implementation

end.

