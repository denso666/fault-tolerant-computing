import fs from 'fs';
const checkpointPath = "src/state.json";

const getCheckpoint = () => {
    const state = fs.readFileSync(checkpointPath);
    return JSON.parse(state);
}

const setCheckpoint = (data) => {
    fs.writeFileSync(checkpointPath, JSON.stringify(data, null, 4));
}

export default {getCheckpoint, setCheckpoint}