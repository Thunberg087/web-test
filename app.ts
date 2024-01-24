import express from 'express'
import { version } from './package.json'

const app = express()
const port = 3000

app.get('/', (req, res) => {
  
  res.send(`Hello World! <br> ${version || 'no version'}`)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
