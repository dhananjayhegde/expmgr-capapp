sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/dh/mng/journal/entry/managejournalentry/test/integration/pages/JournalEntryList",
	"com/dh/mng/journal/entry/managejournalentry/test/integration/pages/JournalEntryObjectPage"
], function (JourneyRunner, JournalEntryList, JournalEntryObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/dh/mng/journal/entry/managejournalentry') + '/test/flp.html#app-preview',
        pages: {
			onTheJournalEntryList: JournalEntryList,
			onTheJournalEntryObjectPage: JournalEntryObjectPage
        },
        async: true
    });

    return runner;
});

