using {com.dh.expmgr as my} from '../db/schema';

service ManageJournalEntry @(path: '/manage/journalentry') {
    @odata.draft.enabled
    entity JournalEntry      as projection on my.JournalEntry;

    //////////////////////////////////////////////////////////////////
    // Associations
    //
    entity Category          as projection on my.Category;
    entity Account           as projection on my.Account;
    entity PaymentMode       as projection on my.PaymentMode;
    entity PaymentAccount    as projection on my.PaymentAccount;
    entity DebitCreditInd    as projection on my.DebitCreditInd;
    entity Tag               as projection on my.Tag;
    entity JournalEntryToTag as projection on my.JournalEntryToTag;
    entity SharedJournal     as projection on my.SharedJournal;
}
