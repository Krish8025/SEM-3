const http = require('http');
const server = http.createServer(
    (req, res) => {
        const URL = req.url;
        if (URL == '/home') {
            res.write('home page');
            console.log('inside home page');
            res.end();
        }
        
        else if (URL == '/feedback') {
            res.write('feedback page');
            console.log('inside feedback page');
            res.end();
        }

        else if (URL == '/contact') {
            res.write('contact page');
            console.log('inside contanct page');
            console.log('786294891');
            res.end();
        }
        else if (URL == '/about') {
            res.write('about page');
            console.log('inside about page');
            res.end();
        }
    })
server.listen(3000, () => {
    console.log('server is running');
});