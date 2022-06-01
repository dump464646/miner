const shell = require('shelljs');
const CronJob = require('cron').CronJob;
let flag = false;
const job = new CronJob({
  cronTime: '*/30 * * * *',
  onTick: () => {
    if (flag) {
      console.log(`Miner stopped: ${new Date()}`);
      shell.exec('pm2 delete miner');
      flag = false;
    } else {
      console.log(`Miner started: ${new Date()}`);
      shell.exec('pm2 start miner-bitweb.sh --name miner');
      flag = true;
    }
  },
  start: false,
  runOnInit: true,
  timeZone: 'UTC',
});

console.log('Cron miner up started');
job.start();
