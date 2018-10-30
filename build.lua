#!/usr/bin/env texlua

-- Build script for oberdiek bundle (check only)
module = "oberdiek"
sourcefiles = {}
installfiles = {}
unpackfile = {}

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
