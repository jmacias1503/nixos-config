{pkgs, ...}: {
  config.services.postgresql = {
    enable = false;
    ensureDatabases = ["postgres"];
    authentication = pkgs.lib.mkOverride 10 ''
      #type	database	DBuser	auth-method
      local	all	all	trust
    '';
  };
}
