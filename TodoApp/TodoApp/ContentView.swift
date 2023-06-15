//
//  ContentView.swift
//  TodoApp
//
//  Created by Takumi_Hagi_BTC4 on 2023/06/14.
//

import SwiftUI

struct ContentView: View {
//    userDataの内容が変更できるようになり、Viewが更新される
    @EnvironmentObject var userData : UserData

    var body: some View {
        NavigationView{
            List{
                ForEach(userData.tasks) { task in
                    Button(action: {

                        //  .firstIndex(of:task)はオプショナル型を返すのでガードを使う
                        guard let index=self.userData.tasks.firstIndex(of:task) else{
                            return
                        }

                        self.userData.tasks[index].checked.toggle()
                    }){ListRow(task: task.title, isCheck: task.checked)}
                }

                if self.userData.isEditing{
                    Draft()
                }else{
                    Button(action: {self.userData.isEditing=true}){                Text("＋")
                        .font(.title)}
                }

            }
            .navigationBarTitle(Text("Task"))
            .navigationBarItems(trailing: Button(action: {DeleteTask()}){ Text("Delete")})
        }
    }

    func DeleteTask(){
//        userDataの中でfalseのものだけを格納
        let necessaryTask =
            self.userData.tasks.filter({!$0.checked})
//        userData.tasksを更新
        self.userData.tasks=necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
