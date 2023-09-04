import express from 'express';
import path from 'path';
import checkpoint from './checkpoint.js';

// app config
const __dirname = path.resolve();
const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// routes
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'src/views/index.html'))
});
app.get('/click', (req, res) => {
    res.json(checkpoint.getCheckpoint());
});
app.post('/click', (req, res) => {
    const { clicks } = req.body;
    checkpoint.setCheckpoint({
        "clicks": parseInt(clicks),
        "checkpoint": Date.now()
    });

    res.json(checkpoint.getCheckpoint());
});
app.get('/word', (req, res) => {
    res.json(checkpoint.getCheckpoint());
});
app.post('/word', (req, res) => {
    const { word_idx, paragraph_status, paragraph } = req.body;
    checkpoint.setCheckpoint({
        "word_idx": parseInt(word_idx),
        "paragraph_status": paragraph_status,
        "paragraph": paragraph,
        "checkpoint": Date.now()
    })
});

// listener
app.listen(3000);