using ManageJournalEntry as my from '../../srv/manage-journal-entry';


annotate my.JournalEntry with @(UI: {
    /////////////////////////////////////////
    //
    // List Report
    //
    SelectionFields           : [
        entryDate,
        description,
        amount,
        debitCreditInd,
        category_ID,
        account_ID
    ],
    LineItem                  : [
        {Value: entryDate},
        {Value: description},
        {
            Value    : amount,
            Label    : 'Amount',
            Precision: 2,
            Scale    : 15,
            Unit     : 'currencyCode'
        },
        {
            Value: debitCreditInd_ID,
            Label: 'Debit/Credit'
        },
        {
            Value: category_ID,
            Label: 'Category'
        },
        {
            Value: account_ID,
            Label: 'Account'
        },
        {
            Value: paymentMode_ID,
            Label: 'Payment Mode'
        },
        {
            Value: paymentAccount_ID,
            Label: 'Payment Account'
        }
    ],
    /////////////////////////////////////////
    //
    // Object Page
    HeaderInfo                : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Journal Entry',
        TypeNamePlural: 'Journal Entries',
        Title         : {Value: description},
        Description   : {Value: ID}
    },

    HeaderFacets              : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#AdminInfo'
    }],

    FieldGroup #AdminInfo     : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: createdAt},
            {Value: createdBy},
            {Value: modifiedAt},
            {Value: modifiedBy}
        ]
    },

    FieldGroup #BasicData     : {
        $Type: 'UI.FieldGroupType',
        Label: 'Basic Data',
        Data : [
            {Value: entryDate},
            {Value: description},
            {
                Value    : amount,
                Label    : 'Amount',
                Precision: 2,
                Scale    : 15,
                Unit     : 'currencyCode'
            }
        ]
    },

    FieldGroup #OtherDetails  : {
        $Type: 'UI.FieldGroupType',
        Label: 'Other Details',
        Data : [
            {
                Value: debitCreditInd_ID,
                Label: 'Debit/Credit'
            },
            {
                Value: category_ID,
                Label: 'Category'
            },
            {
                Value: account_ID,
                Label: 'Account'
            }
        ]
    },

    FieldGroup #PaymentDetails: {
        $Type: 'UI.FieldGroupType',
        Label: 'Payment Details',
        Data : [
            {
                Value: paymentMode_ID,
                Label: 'Payment Mode'
            },
            {
                Value: paymentAccount_ID,
                Label: 'Payment Account'
            }
        ]
    },

    ///////////////////////////////////
    // Tabs
    //
    Facets                    : [
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'idJournalEntryGeneralInfo',
            Label : 'General Information',
            Facets: [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Basic Data',
                    Target: '@UI.FieldGroup#BasicData'
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Other Details',
                    Target: '@UI.FieldGroup#OtherDetails'
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Payment Details',
                    Target: '@UI.FieldGroup#PaymentDetails'
                }
            ]
        },

        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Tags',
            Target: 'assignedTags/@UI.LineItem',
        }

    ]
});

annotate my.JournalEntryToTag with @(UI: {LineItem: [
    {
        Value: tag.ID,
        Label: 'Tag'
    },
    {
        Value: tag.name,
        Label: 'Tag Name'
    }

]});
