//
//  testmodels.swift
//  RealmResultsController
//
//  Created by Isaac Roldan on 6/8/15.
//  Copyright © 2015 Redbooth.
//

import Foundation
import RealmSwift

func NewTask(_ id: Int) -> Task {
    let task = Task()
    task.id = id
    return task
}

class Task: RealmSwift.Object {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var resolved = false
    @objc dynamic var projectID = 0
    @objc dynamic var user: User?
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    static func map(_ model: TaskModel) -> Task {
        let task = Task()
        task.id = model.id
        task.name = model.name
        task.resolved = model.resolved
        task.projectID = model.projectID
        return task
    }
    
    static func mapTask(_ taskModel: Task) -> TaskModel {
        let task = TaskModel()
        task.id = taskModel.id
        task.name = taskModel.name
        task.resolved = taskModel.resolved
        task.projectID = taskModel.projectID
        return task
    }
}

class TaskModel: RealmSwift.Object {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var resolved = false
    @objc dynamic var projectID = 0
    @objc dynamic var user: User?
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class User: RealmSwift.Object {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var avatarURL = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Project: RealmSwift.Object {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var projectDrescription = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Dummy: RealmSwift.Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var optionalNilValue: Project?
}
