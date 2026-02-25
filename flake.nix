{
  description = "C++17 console application template with Pitchfork Layout";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        toolchain = with pkgs; [
          gcc13
          cmake
          ninja
          clang-tools
        ];

        extraPackages = if pkgs.stdenv.isDarwin then [] else [ ];

      in
      {
        devShells.default = pkgs.mkShell {
          packages = toolchain ++ extraPackages;

          shellHook = ''
            export CC=${pkgs.gcc}/bin/gcc
            export CXX=${pkgs.gcc}/bin/g++
            export CMAKE_GENERATOR=Ninja
            echo "C++17 dev environment loaded"
            echo "Run: make build       # configure & build"
            echo "Run: make run         # execute binary"
            echo "Run: make help        # show all targets"
          '';
        };
      }
    );
}
