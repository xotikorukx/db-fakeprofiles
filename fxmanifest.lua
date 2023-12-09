fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author 'xotikorukx on github, discord, and cfx.re. 12/08/2023.'
description 'A tooling resource that allows you to pull a fake profile from an SQL table of pre-generated american populace names, date of births, and so on.'
version '1.0.0'

dependencies {
    'oxmysql'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua',
}