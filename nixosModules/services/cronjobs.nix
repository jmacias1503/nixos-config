{...}: {
  services.cron = {
    enable = true;
    systemCronJobs = [
      "0 10 * * * root nix-collect-garbage -d"
    ];
  };
}
