/****************************************************************************************************************
* Copyright: © 2018-2026 Ozan Nurettin Süel (aka UI-Manufaktur UG *R.I.P*)
* License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.
* Authors: Ozan Nurettin Süel (aka UI-Manufaktur UG *R.I.P*)
*****************************************************************************************************************/
module app;

import vibe.database;

@safe:

version (unittest) {
} else {
    void main() {
        auto router = new URLRouter();

        auto settings = new HTTPServerSettings();
        settings.port = 8080;
        settings.bindAddresses = ["0.0.0.0"];

        auto listener = listenHTTP(settings, router);
        runApplication();
    }
}
