express = require 'express'
app = express()
 
app.get '/employee/getEmployee/:name', (req, res) ->
    res.type('application/json')
    name = req.params.name
    console.log "Parameter: #{name}"
    employee = new Object()
    employee.name = req.params.name
    employee.age = 25
    employee.deparment = "HR"
    employee.wage = 15000.00    
    
    address = new Object()
    address.city = "Massachusetts"
    address.state = "Springfield"
    address.street = "Evergreen"
    address.zip = 66450
    
    employee.address = address    
    res.json(employee)

 
app.post '/employee/postEmployee', (req, res) ->
    employee = req.body
    console.log "Got request: " + JSON.stringify(employee)
    res.send(employee)


app.listen(process.env.PORT || 9999)
