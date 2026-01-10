using {
    Currency,
    managed,
    cuid,
    sap,
} from '@sap/cds/common';

namespace com.dh.expmgr;

type CategoryType : String(1) enum {
    EXPENSE = 'E';
    INCOME = 'I';
};

entity Category : sap.common.CodeList {
    key ID   : Integer;
        type : CategoryType;
}

type AccountType  : String(1) enum {
    EXPENSE = 'E';
    PERSONAL = 'P';
    LOAN = 'L';
    INVESTMENT = 'I';
};

entity Account : managed, cuid {
    name   : String(100);
    type   : AccountType;
    parent : Association to Account;
}

entity PaymentMode : sap.common.CodeList {
    key ID : Integer;
}

entity PaymentAccount : sap.common.CodeList {
    key ID : Integer;
}

entity DebitCreditInd : sap.common.CodeList {
    key ID : Integer;
}

entity Tag : managed, cuid {
    name             : String(50);
    journalEntryLink : Association to many JournalEntryToTag
                           on journalEntryLink.tag = $self;
}

entity JournalEntryToTag : managed, cuid {
    tag          : Association to Tag;
    journalEntry : Association to JournalEntry;
}

entity JournalEntry : managed, cuid {
    entryDate      : Date;
    description    : String(255);
    debitCreditInd : Association to DebitCreditInd;
    amount         : Decimal(15, 2);
    currency       : Currency;
    category       : Association to Category;
    account        : Association to Account;
    paymentMode    : Association to PaymentMode;
    paymentAccount : Association to PaymentAccount;
    assignedTags   : Composition of many JournalEntryToTag
                         on assignedTags.journalEntry = $self;
    sharedJournal  : Association to SharedJournal;
}

entity SharedJournal : managed, cuid {
    description : String(255);
    entries     : Composition of many SharedJournalEntry
                      on entries.sharedJournal = $self;
}

entity SharedJournalEntry : managed, cuid {
    sharedJournal  : Association to SharedJournal;
    description    : String(255);
    debitCreditInd : Association to DebitCreditInd;
    amount         : Decimal(15, 2);
    currency       : Currency;
    payer          : Association to Account;
    category       : Association to Category;
    account        : Association to Account;
    paymentMode    : Association to PaymentMode;
    paymentAccount : Association to PaymentAccount;
    share          : Composition of many ShareOfAccount
                         on share.sharedEntry = $self;
}

entity ShareOfAccount : managed, cuid {
    account      : Association to Account;
    sharedEntry  : Association to SharedJournalEntry;
    sharePercent : Decimal(5, 2);
}
