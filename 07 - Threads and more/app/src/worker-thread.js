import fs from 'fs';
import { parentPort } from 'worker_threads';

const historyPath = "src/history.json";
const history = JSON.parse(fs.readFileSync(historyPath));

// only for time perspective
await new Promise(r => setTimeout(r, 2000));

parentPort.postMessage(history.list)




