db.createCollection("LIBRARY")

db.LIBRARY.insert({"ISBN":1122,"TITLE":'datbase',"AUTHOR":'ABC',"PUBLISHER":'selina',"SSN":2015,"date":'2017-05-29'})
db.LIBRARY.insert({"ISBN":2233,"TITLE":'datbase',"AUTHOR":'DEF',"PUBLISHER":'mcgraw',"SSN":2016,"date":'2017-06-29' })

db.LIBRARY.find().pretty()
db.LIBRARY.find({"ISBN":1122},{"SSN":1,_id:0}).pretty()
db.LIBRARY.find({"TITLE":'datbase'},{"SSN":1,_id:0}).pretty()