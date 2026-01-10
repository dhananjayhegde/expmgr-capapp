sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.dh.mng.shared.journal.entry.managesharedjournalentry',
            componentId: 'SharedJournalList',
            contextPath: '/SharedJournal'
        },
        CustomPageDefinitions
    );
});