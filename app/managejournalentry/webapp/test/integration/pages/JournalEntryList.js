sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.dh.mng.journal.entry.managejournalentry',
            componentId: 'JournalEntryList',
            contextPath: '/JournalEntry'
        },
        CustomPageDefinitions
    );
});