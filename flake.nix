{
  description = "SQL Course Materials";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";

    edify.url = "github:pjones/edify/nixos-21.11";
    edify.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, edify, ... }:
    let
      supportedSystems = [
        # "aarch64-darwin"
        # "aarch64-linux"
        # "armv7l-linux"
        # "x86_64-darwin"
        "x86_64-linux"
      ];

      # Function to generate a set based on supported systems:
      forAllSystems = f:
        nixpkgs.lib.genAttrs supportedSystems (system: f system);

      # Attribute set of nixpkgs for each system:
      nixpkgsFor = forAllSystems (system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = false;
        });

    in
    {
      packages = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in
        {
          sql-intro = pkgs.stdenvNoCC.mkDerivation {
            pname = "sql-intro";
            version = "1.0";

            src =
              pkgs.lib.cleanSourceWith {
                src = pkgs.lib.cleanSource ./.;
                filter = path: type:
                  !(type == "directory"
                    && baseNameOf path == "build");
              };

            buildInputs = [
              edify.outputs.defaultPackage.${system}
              pkgs.zip
              pkgs.sqlite-interactive
            ];

            buildPhase = ''
              # It's safe to run shell commands in the Nix sandbox.
              edify build --unsafe-allow-commands
            '';

            installPhase = ''
              mkdir -p "$out/$name/handouts" "$out/$name/slides"
              cp -a LICENSE README.md src "$out/$name"

              # Copy PDF files into the correct locations:
              find build -type f -name '*.handout.pdf' -exec mv '{}' "$out/$name/handouts" ';'
              find build -type f -name '*.slides.pdf'  -exec mv '{}' "$out/$name/slides" ';'

              # Rename PDF files:
              for file in $out/$name/{handouts,slides}/*.pdf; do
                mv "$file" "$(sed -E 's/[.](handout|slides)[.]pdf/.pdf/' <<<"$file")"
              done

              # Build archives:
              ( cd "$out" && zip -9 -y -r -q "$name.zip" "$name" )
            '';
          };
        });

      defaultPackage = forAllSystems (system:
        self.packages.${system}.sql-intro);

      devShell = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in
        pkgs.mkShell {
          inputsFrom = builtins.attrValues self.packages.${system};
        });
    };
}
