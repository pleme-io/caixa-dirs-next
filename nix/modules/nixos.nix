# nix/modules/nixos.nix — auto-generated from dirs-next.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.dirs-next;
in {
  options.services.dirs-next = {
    enable = lib.mkEnableOption "dirs-next";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.dirs-next or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
