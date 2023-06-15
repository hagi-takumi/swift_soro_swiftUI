//
//  UserTask.swift
//  TodoApp
//
//  Created by Takumi_Hagi_BTC4 on 2023/06/14.
//

import SwiftUI

//ForEachで取り出すためIdentifiable
struct Task:Identifiable,Equatable{
    let id = UUID()
    var title:String
    var checked:Bool

    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}


