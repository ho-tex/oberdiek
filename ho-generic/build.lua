-- Build script for test-ho-generic

-- Build script for ho-generic bundle (check only)
module = "ho-generic"
--sourcefiles = {'*.dtx'}
installfiles = {'*.def','*.sty','*.dfu','ho-generic.luatex.lua', 'luacolor.lua','magicnum.lua','pdftexcmds.lua','bmpsize-test.tex'}
-- unpackfile = {'ho-generic.ins'}


checkconfigs = {"build","config-plain", "config-noxetex","config-luatex","config-pdftex"}
checkruns = 2


kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
