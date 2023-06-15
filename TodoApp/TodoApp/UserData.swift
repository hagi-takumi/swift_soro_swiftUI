//
//  UserData.swift
//  TodoApp
//
//  Created by Takumi_Hagi_BTC4 on 2023/06/14.
//

import SwiftUI

class UserData:ObservableObject{
   @Published var tasks=[
        Task(title: "散歩", checked:false),
        Task(title: "料理", checked:true),
        Task(title: "洗濯", checked:false)
    ]

    @Published var isEditing:Bool=false
}

