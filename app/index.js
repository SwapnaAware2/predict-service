const express = require('express');
const app = express();
const port = 3000;

app.get('/health', (req, res) => {
	  res.json({ status: 'ok' });
});

app.get('/predict', (req, res) => {
	  res.json({ score: 0.75 });
});

app.listen(port, () => {
	  console.log(`App running on port ${port}`);
});

