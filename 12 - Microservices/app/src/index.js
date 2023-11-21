import express from 'express';
import Generator from './passgen.js';

// app config
const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// main route
app.get('/gen/:qty', (req, res) => {
	let passs = {
		quantity: req.params.qty,
		passwords: []
	};
	let size;
	let pass;

	for (let qty = 0; qty < parseInt(req.params.qty); qty++) {
		pass = Generator.generate(Math.floor(Math.random() * 5));
		size = pass.length;
		passs.passwords.push({size, password:pass})
	}
	res.json( passs )
});
app.get('/gen', (req, res) => {
	const pass = Generator.generate(Math.floor(Math.random() * 10));
	const size = pass.length;
	res.json({size, password:pass});
});

// listener
app.listen(3000);


















