sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.dh.mng.journal.entry.managejournalentry',
            componentId: 'JournalEntryObjectPage',
            contextPath: '/JournalEntry'
        },
        CustomPageDefinitions
    );
});