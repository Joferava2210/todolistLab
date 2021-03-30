//
//  CoreDataViewModel.swift
//  todolist
//
//  Created by Felipe Ramirez Vargas on 29/3/21.
//

import Foundation

class CoreDataViewModel: ObservableObject {
    @Published var coreDM = CoreDataManager()
    @Published var tasks: [TaskEntity] = [TaskEntity]()
    
    func saveTask(title: String, description: String, priority: String){
        coreDM.saveTask(title: title, description: description, priority: priority)
    }
    
    func getAllTask(){
        tasks = self.coreDM.getAllTask()
    }
    
    func deleteTask(task:TaskEntity){
        coreDM.deleteTask(task: task)
    }
}
