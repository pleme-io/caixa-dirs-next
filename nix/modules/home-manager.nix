# nix/modules/home-manager.nix — auto-generated from dirs-next.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.dirs-next; in {
  options.programs.dirs-next = {
    enable = lib.mkEnableOption "dirs-next";
    package = lib.mkOption { type = lib.types.package; default = pkgs.dirs-next or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
