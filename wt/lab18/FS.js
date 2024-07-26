const FS = require('fs')
const { text } = require('stream/consumers')
FS.exists('E:/Sem 3/WT Sem 3/Lab 17/path.js',(exists) => {
    console.log(exists ? 'Found':'Not found')
})

FS.stat('path.js',(err,data) => {
    console.log(data)
})

FS.open('Path.js','r',(err,data) => {
    console.log(data)
    console.log('File Opened')
})

FS.readFile('path.js',(err,data) => {
    console.log(data.toString())
})

FS.writeFile('FSDemo.txt','Sheet ',(err,data) => {
})

FS.appendFile('FSDemo.txt','Banugaria',(err,data) => {
})