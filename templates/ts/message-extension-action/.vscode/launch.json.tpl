{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch Remote in Teams (Edge)",
            "type": "msedge",
            "request": "launch",
            "url": "https://teams.microsoft.com/l/app/${{TEAMS_APP_ID}}?installAppPackage=true&webjoin=true&${account-hint}",
            "presentation": {
                "group": "remote",
                "order": 1
            },
            "internalConsoleOptions": "neverOpen"
        },
        {
            "name": "Launch Remote in Teams (Chrome)",
            "type": "chrome",
            "request": "launch",
            "url": "https://teams.microsoft.com/l/app/${{TEAMS_APP_ID}}?installAppPackage=true&webjoin=true&${account-hint}",
            "presentation": {
                "group": "remote",
                "order": 2
            },
            "internalConsoleOptions": "neverOpen"
        },
        {
            "name": "Launch App (Edge)",
            "type": "msedge",
            "request": "launch",
            "url": "https://teams.microsoft.com/l/app/${{local:TEAMS_APP_ID}}?installAppPackage=true&webjoin=true&${account-hint}",
            "cascadeTerminateToConfigurations": [
                "Attach to Local Service"
            ],
            "presentation": {
                "group": "all",
                "hidden": true
            },
            "internalConsoleOptions": "neverOpen"
        },
        {
            "name": "Launch App (Chrome)",
            "type": "chrome",
            "request": "launch",
            "url": "https://teams.microsoft.com/l/app/${{local:TEAMS_APP_ID}}?installAppPackage=true&webjoin=true&${account-hint}",
            "cascadeTerminateToConfigurations": [
                "Attach to Local Service"
            ],
            "presentation": {
                "group": "all",
                "hidden": true
            },
            "internalConsoleOptions": "neverOpen"
        },
        {
            "name": "Attach to Local Service",
            "type": "node",
            "request": "attach",
            "port": 9239,
            "restart": true,
            "presentation": {
                "group": "all",
                "hidden": true
            },
            "internalConsoleOptions": "neverOpen"
        }
    ],
    "compounds": [
        {
            "name": "Debug in Test Tool (Preview)",
            "configurations": [
                "Attach to Local Service"
            ],
            "preLaunchTask": "Start Teams App (Test Tool)",
            "presentation": {
{{#enableMETestToolByDefault}}
                "group": "group 0: Teams App Test Tool",
{{/enableMETestToolByDefault}}
{{^enableMETestToolByDefault}}
                "group": "group 3: Teams App Test Tool",
{{/enableMETestToolByDefault}}
                "order": 1
            },
            "stopAll": true
        },
        {
            "name": "Debug in Teams (Edge)",
            "configurations": [
                "Launch App (Edge)",
                "Attach to Local Service"
            ],
            "preLaunchTask": "Start Teams App Locally",
            "presentation": {
                "group": "all",
                "order": 1
            },
            "stopAll": true
        },
        {
            "name": "Debug in Teams (Chrome)",
            "configurations": [
                "Launch App (Chrome)",
                "Attach to Local Service"
            ],
            "preLaunchTask": "Start Teams App Locally",
            "presentation": {
                "group": "all",
                "order": 2
            },
            "stopAll": true
        }
    ]
}