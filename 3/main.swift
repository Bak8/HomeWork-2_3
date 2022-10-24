//
//  main.swift
//  3
//
//  Created by Atai Begaliev on 24/10/22.
//

import Foundation



//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
//
//Для каждого из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл




class Database{
    
    var studentsArray: [Students] = []
 
    
    func addstudent (student:Students) {
        studentsArray.append(student)
    }
    
    func removeStudent (number:Int) {
        studentsArray.remove(at: number)
    }
    
    func getInfo () {
        for (index,item) in studentsArray.enumerated() {
            print("#\(index + 1) - \(item.name) \(item.surname): Возраст:\(item.age) Средний балл:\(item.gpa) Класс:\(item.schoolClass)")
        }
    }
    
    var teachersArray: [Teachers] = []
    
    func addTeacher (teacher:Teachers){
        teachersArray.append(teacher)
    }
    func removeTeacher (number1:Int) {
        teachersArray.remove(at: number1)
    }
    func getInfoT () {
        for (index,item) in teachersArray.enumerated() {
            print("#\(index + 1) - \(item.tName) \(item.tSurname): Возраст:\(item.tAge) Предмет:\(item.lesson) Опыт работы:\(item.workExperience)")
        }
    }
}
    


print("Студенты:")

var student1 = Database()
student1.addstudent(student: Students(name: "Atai", surname: "Begaliev", age: 18, gpa: 3.5, schoolClass: "11B"))
student1.addstudent(student: Students(name: "Aleksey", surname: "Stechkin", age: 15, gpa: 3.4, schoolClass: "9B"))
student1.addstudent(student: Students(name: "Delete", surname: "Delete", age: 0, gpa: 0.0, schoolClass: "Delete"))
student1.removeStudent(number: 2)
student1.getInfo()

print("\nПреподаватели:")

var teacher1 = Database()
teacher1.addTeacher(teacher: Teachers(tName: "Delete", tSurname: "Delete", tAge: 53, lesson: "Delete", workExperience: 7))
teacher1.addTeacher(teacher: Teachers(tName: "Olga", tSurname: "Ivanovna", tAge: 45, lesson: "Геометрия", workExperience: 5))
teacher1.addTeacher(teacher: Teachers(tName: "Dmitrii", tSurname: "Makarov", tAge: 53, lesson: "География", workExperience: 7))
teacher1.removeTeacher(number1: 0)
teacher1.getInfoT()
    
    
