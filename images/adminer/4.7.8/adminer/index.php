<?php

function adminer_object()
{
    // Required to run any plugin.
    include_once "./plugins/plugin.php";

    // Plugins auto-loader.
    foreach (glob("plugins/*.php") as $filename) {
        include_once "./$filename";
    }

    // Specify enabled plugins here.
    $plugins = [
        new AdminerDatabaseHide(["mysql", "information_schema", "performance_schema"]),
//        new AdminerLoginServers([
//            "mysql" => "mysql",
//            "mariadb" => "mariadb",
//        ]),
        new AdminerTablesFilter(),
        new AdminerSimpleMenu(),
        new AdminerCollations(["utf8_general_ci"]),
        new AdminerJsonPreview(),

        // AdminerTheme has to be the last one.
        new AdminerTheme(),
    ];

    return new AdminerPlugin($plugins);
}

// Include original Adminer or Adminer Editor.
include "./adminer.php";
