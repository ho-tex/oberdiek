-- Build script for test-ho-if

-- Build script for ho-if bundle (check only)
module = "ho-if"
--sourcefiles = {'*.dtx'}
-- unpackfile = {'oberdiek.ins'}


checkconfigs = {"build","config-plain"}
checkruns = 2


kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
