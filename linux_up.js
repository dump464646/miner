const shell = require('shelljs');
const CronJob = require('cron').CronJob;

const job = new CronJob({
  cronTime: '0 2 * * *',
  onTick: () => {
    console.log(`Miner started: ${new Date()}`);
    shell.exec('pm2 start start_linux.sh --name miner');
  },
  start: true,
  timeZone: 'UTC',
});

console.log('Cron miner up started');
job.start();
