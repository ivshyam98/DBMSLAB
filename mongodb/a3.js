db.createCollection("BOATRES")

db.BOATRES.insert({"BID":9988,"BNAME":'ABC',"COLOUR":'Black',"SNAME":'John',"SID":1234,"DAY":'2017-12-25'})
db.BOATRES.insert({"BID":8877,"BNAME":'DEF',"COLOUR":'Black',"SNAME":'Smith',"SID":4567,"DAY":'2017-11-24'})

db.BOATRES.find({"SNAME":'Sucre'}).count()
db.BOATRES.find({"COLOUR":'Black'}).pretty()
