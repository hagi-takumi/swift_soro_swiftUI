//
//  ListRow.swift
//  TodoApp
//
//  Created by Takumi_Hagi_BTC4 on 2023/06/14.
//

import SwiftUI

struct ListRow: View {
    let task :String
    var isCheck:Bool

    var body: some View {
//        横並び
        HStack {
            if isCheck{
                Text("✅")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            }else{
                Text("🟥")
                Text(task)
            }

        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "料理",isCheck: true)
    }
}
