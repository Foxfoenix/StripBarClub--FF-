fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "StripBarClub"
description "Strip Tease Bar Club "
author "FoxFoenix"
version "1.0.0"

shared_scripts {
	'shared/config.lua',
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'server/main.lua',
}

dependencies {
	'esx_society'
}