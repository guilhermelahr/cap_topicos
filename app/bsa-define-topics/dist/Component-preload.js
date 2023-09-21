//@ui5-bundle bsadefinetopics/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"bsadefinetopics/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("bsadefinetopics.Component",{metadata:{manifest:"json"}})});
},
	"bsadefinetopics/i18n/i18n.properties":'# This is the resource bundle for bsadefinetopics\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Define Topic\n\n#YDES: Application description\nappDescription=A Fiori application.',
	"bsadefinetopics/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"bsadefinetopics","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.11.0","toolsId":"a43a5bbd-7587-4920-a826-7bdc0f570765"},"dataSources":{"mainService":{"uri":"odata/v4/service/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"aemtopics-manage":{"signature":{"parameters":{},"additionalParameters":"allowed"},"semanticObject":"aemtopics","action":"manage","title":"SAP AEM","subTitle":"Manage Topic","icon":""}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.118.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"bsadefinetopics.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"CenariosList","target":"CenariosList"},{"pattern":"Cenarios({key}):?query:","name":"CenariosObjectPage","target":"CenariosObjectPage"}],"targets":{"CenariosList":{"type":"Component","id":"CenariosList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Cenarios","variantManagement":"Page","navigation":{"Cenarios":{"detail":{"route":"CenariosObjectPage"}}}}}},"CenariosObjectPage":{"type":"Component","id":"CenariosObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"Cenarios"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"service":"bsadefinetopics","public":true}}'
}});
