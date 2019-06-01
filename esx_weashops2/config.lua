Config                = {}
Config.DrawDistance   = 100
Config.Size           = { x = 1.5, y = 1.5, z = 1.5 }
Config.Color          = { r = 0, g = 128, b = 255 }
Config.Type           = 1
Config.Locale         = 'br'
Config.EnableLicense  = true
Config.LicensePrice   = 30000

Config.Zones = {

    GunShop = {
        legal = 0,
        Items = {
            {name  = "WEAPON_PISTOL", price = 50000, label = "Arma 1"} --LEMBRE-SE DE TROCAR O VALOR, O MODELO E O NOME DA ARMA. "Items" equivale ao porte 1 e "Items1" ao porte 2--
        },
        Items1 = {
            {name  = "WEAPON_REVOLVER", price = 100000, label = "Arma 2"} --Para adicionar mais armas, copie este comando e cole sem alterar o código, somente o modelo da arma, preço e o nome.--
        },
        Pos   = {
            { x = -662.180,   y = -934.961,   z = 20.829 },
            { x = 810.25,     y = -2157.60,   z = 28.62 },
            { x = 1693.44,    y = 3760.16,    z = 33.71 },
            { x = -330.24,    y = 6083.88,    z = 30.45 },
            { x = 252.63,     y = -50.00,     z = 68.94 },
            { x = 22.09,      y = -1107.28,   z = 28.80 },
            { x = 2567.69,    y = 294.38,     z = 107.73 },
            { x = -1117.58,   y = 2698.61,    z = 17.55 },
            { x = 842.44,     y = -1033.42,   z = 27.19 },

        }
    },

    BlackWeashop = {
        legal = 1,
        Items = {},
        Pos   = {
            { x = -1306.239,   y = -394.018,  z = 35.695 },
        }
    },

}