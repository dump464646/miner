const shell = require('shelljs');
const CronJob = require('cron').CronJob;

const job = new CronJob({
  cronTime: '*/10 * * * *',
  onTick: () => {
    console.log(`Miner started: ${new Date()}`);
    shell.exec('pm2 start faucet_win.bat --interpreter none --name miner');
  },
  start: false,
  runOnInit: true,
  timeZone: 'UTC',
});

console.log('Cron miner up started');
job.start();
