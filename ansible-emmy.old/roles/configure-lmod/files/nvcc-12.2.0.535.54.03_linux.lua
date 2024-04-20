local base = pathJoin("/software/cuda-12.2/")

family("nvcc")

whatis("Name: "..myModuleName())
whatis("Version: "..myModuleVersion())
whatis("Category: Development")

prepend_path("PATH", pathJoin(base, "bin"))
