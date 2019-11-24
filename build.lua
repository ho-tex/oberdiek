-- Build script for test-oberdiek

-- Build script for oberdiek bundle (check only)
module = "oberdiek"
--sourcefiles = {'*.dtx'}
installfiles = {'*.def','*.sty','*.dfu','oberdiek.luatex.lua', 'luacolor.lua','magicnum.lua','pdftexcmds.lua','bmpsize-test.tex'}
-- unpackfile = {'oberdiek.ins'}

-- "config-plain-noxetex" "config-plain-luatex"
checkconfigs = {"build","config-plain", "config-noxetex","config-luatex","config-pdftex"}
maxprintline=10000
checkruns = 2

function no_ctan()
error("use mkctan script")
end

target_list.ctan={
bundle_func=no_ctan,
desc="CTAN packaging disabled",
func=no_ctan
}

