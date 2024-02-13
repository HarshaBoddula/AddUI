using CatalogService as service from '../../srv/cat-service';

annotate service.SalesOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerNo',
            Value : customerNo,
        },
    ]
);
annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerNo',
                Value : customerNo,
            },
            {
                $Type : 'UI.DataField',
                Value : items.itemNo,
                Label : 'itemNo',
            },
            {
                $Type : 'UI.DataField',
                Value : items.material,
                Label : 'material',
            },
            {
                $Type : 'UI.DataField',
                Value : items.quantity,
                Label : 'quantity',
            },
            {
                $Type : 'UI.DataField',
                Value : items.salesorder_ID,
                Label : 'salesorder_ID',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
