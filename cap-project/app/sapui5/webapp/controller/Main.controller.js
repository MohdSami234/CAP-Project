sap.ui.define([
    "sap/ui/core/mvc/Controller"
], function (Controller) {
    "use strict";

    return Controller.extend("project1.controller.Main", {

        onToggle: function () {

            var oSideNav = this.byId("sideNavigation");

            oSideNav.setExpanded(!oSideNav.getExpanded());

        }

    });

});