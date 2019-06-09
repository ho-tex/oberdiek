-- Build script for test-oberdiek

-- Build script for oberdiek bundle (check only)
module = "oberdiek"
--sourcefiles = {'*.dtx'}
installfiles = {'*.def','*.sty','*.dfu','oberdiek.luatex.lua', 'luacolor.lua','magicnum.lua','pdftexcmds.lua','bmpsize-test.tex'}
-- unpackfile = {'oberdiek.ins'}


checkconfigs = {"build","config-plain", "config-noxetex","config-luatex","config-pdftex"}
maxprintline=200
checkruns = 2


kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
