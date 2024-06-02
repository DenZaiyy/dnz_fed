fx_version 'cerulean'
game 'gta5'
lua54 'yes'

-- Infos
author 'DenZaiyy'
description 'Fed command by DenZaiyy'
version '1.0.0'

-- Shared Scripts
shared_script {
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
    'locales/*.lua',
    'config.lua',
}

-- Client Scripts
client_script 'client/client.lua'

--
-- Server Scripts
server_script 'server/server.lua'
