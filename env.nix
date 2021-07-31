{ mkShell, clang12Stdenv
, git, mill, wget, parallel, dtc, protobuf, antlr
, verilator, cmake, ninja
}:

mkShell.override { stdenv = clang12Stdenv; } {
  name = "playground";

  depsBuildBuild = [ git mill wget parallel dtc protobuf antlr verilator cmake ninja ];
}
