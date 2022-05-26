const shell = require('shelljs');
const CronJob = require('cron').CronJob;

const job = new CronJob({
  cronTime: '0 17 * * *',
  onTick: () => {
    console.log(`Miner stopped: ${new Date()}`);
    shell.exec('pm2 delete miner');
  },
  start: false,
  timeZone: 'UTC',
});

console.log('Cron miner down started');
job.start();
