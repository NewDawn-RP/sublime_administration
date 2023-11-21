_Admin = _Admin or {}
_Admin.Panel = _Admin.Panel or {}


--| ESX Legacy Version & RageUI Library

-- "license", ou ce que vous retourne xPlayer.identifier si vous avez modifié es_extended pour que la fonction vous retourne le steamID par exemple
_Admin.MainUser = {
    ["2e714ed9df4ada6806f820af6b1c65007a569b8e"] = true,
    ["ca5e64df50573acc16a67cad7ad183f31540399f"] = true,
    ["8ebabab4283bf38d35c34cb5e0b51d966d8172f8"] = true,
    ["e83559497c40350f95f42bb240f1f3583690b84f"] = true,
}


_Admin.Prefix = "NewDawn-Administration";


_Admin.Logs = {
    WebHook = "https://discord.com/api/webhooks/1117861172927013006/aVR5swErGcYiqAna8yK2BTxv2b1UGwihNUK2yhfqsh_6zCPErY0sap5QC7y2sHndyj1H";
    BotName = "NewDawn-Logs";
    Color = 3092790;
    IconURL = "https://cdn.discordapp.com/attachments/1092062637363310603/1114618975192613014/PNG_Logo_ND_BleuMarine.png"; 
}


_Admin.Config = {
    EnablePrints = true,
    --
    esx_vehicleshop = true, -- If you use script like it, export plate and vehicle in db
    --
    TypeWeight = 'kg',
    --
    ox_inventory = true,
    --
    TypeMoney = '$',
    --
    DoubleJob = true, -- false ou 'fbase' (fbase = doublejob qui passe sur la meme fonction ESX.DoesJobExist) (true == https://sup2ak.gitbook.io/documentation/esx-legacy)
    --
    SQL_Wrapper = "oxmysql", --> mysql or oxmysql -- IMPORTANT (change in fxmanifest your dependencies)
    --
    Macro = {
        ['Open Main Menu'] = {btn = 'F9', description = "~r~Ouvrir Menu Admin~s~"}, --> Open panel
        ['No Clip Toggle'] = {btn = 'F3', description = "No Clip"}, --> No clip
    },
    --
    Revive = { --> Si vous avez une commande revive (régler pour esx_ambulancejob par défaut)
        enable = true,
        command = 'revive '
    },
    --
    NoClip = {
        Controls = {
            goSprint = 21,-- Left Shift
            goUp = 85, -- A
            goDown = 48, -- W
            turnLeft = 34, -- Q (Useles if ControlsHeadingWithMouse = true)
            turnRight = 35, -- D (Useless if ControlsHeadingWithMouse = true)
            goForward = 32,  -- Z
            goBackward = 33, -- S
        },
        ControlsHeadingWithMouse = true, -- Allow to turn left/right with mouse pointing
        Speeds = { 0, 0.5, 2, 5, 10, 15 },
        Offsets = {y = 0.5, z = 0.2, h = 3},
    },
    --
    -- Weather System from https://github.com/thefrcrazy/crz_weather
    UseWeatherAndTimeSync = false; -- true if you don't use script like vSync / cd_easytime ....
    Weather = {
        allWeatherList = { "EXTRASUNNY", "CLEAR", "SMOG", "FOGGY", "OVERCAST", "CLOUDS", "NEUTRAL", "CLEARING", "RAIN", "THUNDER", "SNOW", "SNOWLIGHT", "BLIZZARD", "XMAS", "HALLOWEEN" },
        defaultWeather = "EXTRASUNNY",
        defaultNextWeather = { "CLEARING","RAIN","CLEAR" },
        blackout = false,
        freezeWeather = false,
        freezeTime = false,
        maxRandom = 4,
    },

    reportSelect = {
        {value = "Bug", label = "Un bug"},
        {value = "Demande de spec", label = "Demande de spec"},
        {value = "Problème In-Game", label = "Problème rencontré"},
        {value = "Autre", label = "Autre"},
    },

    reportAdvert = "Merci d'utiliser le /report uniquement pour des problèmes sérieux qui nécessitent l'intervention du staff. Les signalements abusifs seront sévèrement sanctionnés. Assurez-vous que votre requête est pertinente et nécessite une assistance immédiate!"

}
