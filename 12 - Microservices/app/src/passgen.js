import RandExp from 'randexp';

const regex = new RandExp(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/);

const generate = () => {
	const size = 8 * (Math.floor(Math.random() * 4));	
	return regex.gen(size);
}

export default { generate }
