namespace bsa.aem.topicos;
using { cuid, managed } from '@sap/cds/common';

entity Cenarios : cuid,managed {
  area  : String(30) @mandatory; 
  cenario  : String(100) @mandatory;
  tabela: String(30) @mandatory;
  versao: String(3) @mandatory;
  active: Boolean default false;
  topicos: Composition of many Topicos on topicos.cenario = $self;
  payloads: Composition of many Payloads on payloads.cenario = $self;
}

entity Topicos : cuid, managed {
  sequencia  : Integer @mandatory;
  campo  : String(30) @mandatory;
  cenario: Association to Cenarios;
}

entity Payloads : cuid,managed {
  sequencia  : Integer @mandatory;
  campoTabela: String(30) @mandatory;
  campoPayload: String(50) @mandatory;
  cenario: Association to Cenarios;
}
