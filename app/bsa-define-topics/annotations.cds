using service as service from '../../srv/service';

annotate service.Cenarios @(Capabilities: {
    Insertable: true,
    Deletable : true,
    Updatable : true,
});

annotate service.Cenarios with @(
    UI.HeaderInfo       : {
        TypeName      : 'Cenário',
        TypeNamePlural: 'Cenários',
        Title         : {
            $Type: 'UI.DataField',
            Value: cenario
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: area
        },
        TypeImageUrl  : 'sap-icon://sales-order'
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Área',
            Value : area,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Cenário',
            Value : cenario,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tabela',
            Value : tabela,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Versão',
            Value : versao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Ativo',
            Value : active,
        },
    ]
);
annotate service.Cenarios with @(
    UI.FieldGroup #Cenarios : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: area,
                Label: 'Área'
            },
            {
                $Type: 'UI.DataField',
                Value: cenario,
                Label: 'Cenário'
            },
            {
                $Type: 'UI.DataField',
                Value: tabela,
                Label: 'Tabela'
            },
            {
                $Type: 'UI.DataField',
                Value: versao,
                Label: 'Versão'
            },
            {
                $Type: 'UI.DataField',
                Value: active,
                Label: 'Ativo'
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Cenarios',
            Label : 'Geral',
            Target : '@UI.FieldGroup#Cenarios',
        },
           {
            $Type : 'UI.ReferenceFacet',
            ID    : 'CenarioTopicos',
            Target: 'topicos/@UI.LineItem',
            Label : 'Propriedades do Tópico'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'CenarioPayload',
            Target: 'payloads/@UI.LineItem',
            Label : 'Conteúdo do Payload'
        }
    ]
);

annotate service.Topicos @(Capabilities: {
    Insertable: true,
    Deletable : true,
    Updatable : true,
});

annotate service.Topicos with @(
    UI.HeaderInfo           : {
        TypeName      : 'Propriedade do Tópico',
        TypeNamePlural: 'Propriedade do Tópico',
        Title         : {
            $Type: 'UI.DataField',
            Value: campo,
        }
    },
    UI.LineItem                : [
        {
            $Type: 'UI.DataField',
            Value: sequencia,
            Label: 'Sequência'
        },
        {
            $Type: 'UI.DataField',
            Value: campo,
            Label: 'Campo'
        }
    ],
    UI.Facets                  : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'Propriedades',
        Target: '@UI.FieldGroup#Propriedades',
        Label : 'Propriedades'
    }],
    UI.FieldGroup #Propriedades: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: sequencia,
                Label: 'Sequencia'
            },
            {
                $Type: 'UI.DataField',
                Value: campo,
                Label: 'Campos'
            }
        ]
    }

);

annotate service.Payloads @(Capabilities: {
    Insertable: true,
    Deletable : true,
    Updatable : true,
});

annotate service.Payloads with @(
    UI.HeaderInfo           : {
        TypeName      : 'Campo do Payload',
        TypeNamePlural: 'Campo do Payload',
        Title         : {
            $Type: 'UI.DataField',
            Value: campoTabela,
        }
    },
    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Value: sequencia,
            Label: 'Sequência'
        },
        {
            $Type: 'UI.DataField',
            Value: campoTabela,
            Label: 'Campo Tabela'
        },
        {
            $Type: 'UI.DataField',
            Value: campoPayload,
            Label: 'Campo Payload'
        }
    ],
    UI.Facets                  : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'Propriedades',
        Target: '@UI.FieldGroup#Propriedades',
        Label : 'Composição'
    }],
    UI.FieldGroup #Propriedades: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: sequencia,
                Label: 'Sequencia'
            },
            {
                $Type: 'UI.DataField',
                Value: campoTabela,
                Label: 'Campo Tabela'
            },
            {
                $Type: 'UI.DataField',
                Value: campoPayload,
                Label: 'Campo Payload'
            }
        ]
    }
);
