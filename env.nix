{ mkShell, gcc11Stdenv
, git, mill, wget, parallel, dtc, protobuf, antlr
, verilator, cmake, ninja
}:

mkShell {
  name = "playground";

  depsBuildBuild = [ git mill wget parallel dtc protobuf antlr verilator cmake ninja ];
}
