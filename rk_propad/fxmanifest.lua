shared_script '@WaveShield/resource/include.lua'

fx_version ( 'cerulean' )
game ( 'gta5' )

author ({ 'RK x AnnoyingTV' })
description ({ 'Windy City Propad - Advanved Vehicle Theft' })
version ({ '1.0.4' })

ui_page ({ 'build/index.html' })

files ({
    'build/**',
    'build/assets/**',
    'locales/json/**',
})

shared_scripts ({
    '@ox_lib/init.lua',
    'init.lua',
    'locales/LocaleManager.lua',
    'shared/main.lua',
    'shared/vehicles.lua',
})

server_scripts ({
    'modules/bridge/server/inventory/**/*.lua',
    'modules/server.lua',
    'modules/callbacks/server.lua',
})

client_scripts ({
    'modules/bridge/client/**/**/*.lua',
    'modules/nui/client.lua',
    'modules/client.lua',
    'modules/vehicle/client.lua',
})

escrow_ignore ({
    '_install/**/**',
    'locales/LocaleManager.lua',
    'modules/bridge/**/**/*.lua',
    'modules/vehicle/client.lua',
    'modules/nui/**',
    'shared/*.lua'
})

dependencies ({
    'ox_lib',
})

lua54 ( 'true' )
dependency '/assetpacks'