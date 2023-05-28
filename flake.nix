{
  outputs = { self, nixpkgs }: 
  let 
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      buildInputs = [ 
        pkgs.haskell.compiler.ghc945
        pkgs.haskell.packages.ghc945.haskell-language-server
        pkgs.haskell.packages.ghc945.implicit-hie
        pkgs.stack
      ];
    };
  };
}
