sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bsadefinetopics/test/integration/FirstJourney',
		'bsadefinetopics/test/integration/pages/CenariosList',
		'bsadefinetopics/test/integration/pages/CenariosObjectPage'
    ],
    function(JourneyRunner, opaJourney, CenariosList, CenariosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bsadefinetopics') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCenariosList: CenariosList,
					onTheCenariosObjectPage: CenariosObjectPage
                }
            },
            opaJourney.run
        );
    }
);