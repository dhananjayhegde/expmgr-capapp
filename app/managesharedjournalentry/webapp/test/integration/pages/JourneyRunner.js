sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/dh/mng/shared/journal/entry/managesharedjournalentry/test/integration/pages/SharedJournalList",
	"com/dh/mng/shared/journal/entry/managesharedjournalentry/test/integration/pages/SharedJournalObjectPage",
	"com/dh/mng/shared/journal/entry/managesharedjournalentry/test/integration/pages/SharedJournalEntryObjectPage"
], function (JourneyRunner, SharedJournalList, SharedJournalObjectPage, SharedJournalEntryObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/dh/mng/shared/journal/entry/managesharedjournalentry') + '/test/flp.html#app-preview',
        pages: {
			onTheSharedJournalList: SharedJournalList,
			onTheSharedJournalObjectPage: SharedJournalObjectPage,
			onTheSharedJournalEntryObjectPage: SharedJournalEntryObjectPage
        },
        async: true
    });

    return runner;
});

