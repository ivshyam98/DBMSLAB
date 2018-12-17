db.createCollection("SHIPMENT")

db.SHIPMENT.insert({"PNO":11,"PNAME":'bolts',"COLOUR":'Black',"WNO":99,"WNAME":'ABC',"QUANTITY":45,"DATE":'2017-09-25'})
db.SHIPMENT.insert({"PNO":12,"PNAME":'nuts',"COLOUR":'Black',"WNO":99,"WNAME":'ABC',"QUANTITY":38,"DATE":'2017-09-28'})

db.SHIPMENT.find().pretty()
db.SHIPMENT.find({"WNAME":'ABC'}).pretty()
db.SHIPMENT.aggregate([{ $group:{_id:"$WNAME",total:{$sum:"$QUANTITY"}}}])
