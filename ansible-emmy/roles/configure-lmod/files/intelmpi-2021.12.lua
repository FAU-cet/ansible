local base = pahtJoin("/apps/intel/oneapi/mpi/2021.12/")

family("mpi")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Development")

prepend_path("PATH", pathJoin(base, "bin")
prepend_path("CPATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
setenv("INTEL_ONEAPI_MPI_ROOT", "/apps/intel/oneapi")
