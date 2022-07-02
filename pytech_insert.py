
from pymongo import MongoClient 
url = "mongodb+srv://admin:admin@cluster0.cfbqx.mongodb.net/myFirstDatabase?retryWrites=true&w=majority" 
client = MongoClient(url) 
db = client.pytech 
students = db.students 
fred = { 
"first_name" : "Fred", 
"last_name" : "Flintstone", 
"student_id": "1007" 
} 


velma = {  
"first_name" : "Velma", 
"last_name" : "Disney", 
"student_id": "1008" 
} 

 

shaggy = { 
"first_name" : "Shaggy", 
"last_name" : "Dogg", 
"student_id": "1009" 
} 


student1 = students.insert_one(fred).inserted_id  

student2 = students.insert_one(velma).inserted_id 

student3 = students.insert_one(shaggy).inserted_id 

print("--INSERT STATEMENTS--") 

 

print("Inserted student record " + fred["first_name"] + " " + fred["last_name"] + " into the students collection with document_id " + str(student1)) 

 

print("Inserted student record " + velma["first_name"] + " " + velma["last_name"] + " into the students collection with document_id " + str(student1)) 

 

print("Inserted student record " + shaggy["first_name"] + " " + shaggy["last_name"] + " into the students collection with document_id " + str(student1)) 

 