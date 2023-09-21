using bsa.aem.topicos as db from '../db/schema';

service service {
    @odata.draft.enabled
    entity Cenarios as projection on db.Cenarios;
    entity Topicos as projection on db.Topicos;
    entity Payloads as projection on db.Payloads;
}
