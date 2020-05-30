const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send("\n  it's a dog's life. i'm just livin in it. !  \n"))

app.listen(port, () => console.log(`app listening at http://localhost:${port}`))
