Config = {}

Config.Job = {
    NameOfJob = "stripbarclub", -- meme nom que dans la BDD
}

Config.stripbarclub ={
    blip = true,
    BlipIcon = 279,
    BlipScale = 0.9,
    BlipColor = 7,
    BlipName = "Club de strip",
    BlipJob = {
        vec3(439.9637, -992.6703, 85.4347)
    },
}

Config.BossMenu = {
    BlipIcon = 457,
    BlipScale = 0.9,
    BlipColor = 7,
    BlipName = "Boss Menu",
    BossMenuCoords = {
        vec3(437.8536, -991.3359, 30.6896),
    },
}

Config.Frigot = {
    BlipIcon = 568,
    BlipScale = 0.9,
    BlipColor = 7,
    BlipName = "Frigot",
    FrigotCoords = {
       vec3(441.5319, -996.0201, 30.6896), 
    },
    BoxZoneCoords = vec3(441.5319, -996.0201, 30.6896),
    BoxZoneSize = vec3(1, 1, 1),
    BoxZoneDebug = false,
    BoxZoneSprite = true
}

Config.Dock = {
    BlipIcon = 478,
    BlipScale = 0.9,
    BlipColor = 7,
    BlipName = "Dock",
    DockCoords = {
        vec3(445.9309, -996.7551, 29.6896),
    },
    MarkerIcon = 23,
    MarkerR = 255,
    MarkerG = 255,
    MarkerB = 255,
    Duration = 2000,
    Label = "Récolte",
    NotifyTitle = "Validé",
    NotifySubTile = "Vous Transporté une boite de marchandise",
    NotifyTitle2 = "Error",
    NotifySubTile2 = "Vous Pouvez pas transporter de boite de marchandise", 
}

Config.Recolte = {
    RecolteItem = "weed",
    RecolteCount = 500,
    TraitementItem = "cocaine",
    TraitementCount = 1,
    VenteCount = 1,
}

