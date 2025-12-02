using {com.dh.expmgr as my} from '../db/schema';

service ManageSharedJournalEntry @(path: '/manage/sharedjournalentry') {
    @odata.draft.enabled
    entity SharedJournal      as projection on my.SharedJournal;

    //////////////////////////////////////////////////////////////////
    // Compositions
    //
    entity SharedJournalEntry as projection on my.SharedJournalEntry;
    entity ShareOfAccount     as projection on my.ShareOfAccount;

    //////////////////////////////////////////////////////////////////
    // Associations
    //
    entity Category           as projection on my.Category;
    entity Account            as projection on my.Account;
    entity PaymentMode        as projection on my.PaymentMode;
    entity PaymentAccount     as projection on my.PaymentAccount;
    entity DebitCreditInd     as projection on my.DebitCreditInd;
    entity Tag                as projection on my.Tag;
    entity JournalEntryToTag  as projection on my.JournalEntryToTag;
}
