fx_version 'cerulean'
game 'gta5'

author 'RK x AnnoyingTV'
description 'Windy City Propad - Advanced Vehicle Theft'
version '1.0.4'

ui_page 'build/index.html'

files {
    'build/**',
    'build/assets/**',
    'locales/json/**',
}

shared_scripts {
    '@ox_lib/init.lua',
    'init.lua',
    'locales/LocaleManager.lua',
    'shared/main.lua',
    'shared/vehicles.lua',
}

-- OPTION 1: Use consolidated server.lua (RECOMMENDED - includes callbacks)
server_scripts {
    'modules/server.lua',  -- This now includes all callbacks
}

-- OPTION 2: Use separate files (if you want modular approach)
-- Uncomment these lines and comment out the above if you prefer separate files:
-- server_scripts {
--     'modules/callbacks/server.lua',
--     'modules/server.lua',
-- }

client_scripts {
    'modules/bridge/client/**/**/*.lua',
    'modules/nui/client.lua',
    'modules/vehicle/client.lua',
    'modules/client.lua',
}

-- Exports for inventory integration
client_exports {
    'usePropad'
}

escrow_ignore {
    '_install/**/**',
    'locales/**',
    'modules/bridge/**',
    'modules/vehicle/**',
    'modules/nui/**',
    'modules/callbacks/**',
    'modules/**',
    'shared/**',
    'init.lua'
}

dependencies {
    'ox_lib',
}

lua54 'yes'