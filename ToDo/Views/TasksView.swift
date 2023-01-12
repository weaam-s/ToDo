//
//  TasksView.swift
//  ToDo
//
//  Created by Stephanie Diep on 2021-12-07.
//

import SwiftUI

struct TasksView: View {
    
//    init() {
//        if #available(iOS 14.0, *) {
//            // iOS 14 doesn't have extra separators below the list by default.
//        } else {
//            // To remove only extra separators below the list:
//            UITableView.appearance().tableFooterView = UIView()
//        }
//
//        // To remove all separators including the actual ones:
//        UITableView.appearance().separatorStyle = .none
//    }

    
    
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
       
            
            VStack {
                
                Text("My habits")
                    .font(Font.custom("SF pro", size: 27))
                
                List {
                    ForEach(realmManager.tasks, id: \.id) { task in
                        
                       if !task.isInvalidated {
                            TaskRow(task: task.title)
//                                                            .onTapGesture {
//                                                                realmManager.updateTask(id: task.id ,completed: !task.completed)
//                                                            }
                                .swipeActions(edge: .trailing) {
                                    Button(role: .destructive) {
                                        realmManager.deleteTask(id: task.id)
                                    } label: {
                                        Label("Delete", systemImage: "trash")
                                    }
                                }
                        }
                        
                    }
                    .listRowSeparator(.hidden)
                    //owSeparator(.hidden)
                }
                //     .scrollContentBackground(.hidden)
                
//                .onAppear {
//                    UITableView.appearance().backgroundColor = UIColor.clear
//                    UITableViewCell.appearance().backgroundColor = UIColor.clear
//                }
                
                //    Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
             .background(Color("system"))
        
    }
    }


struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())
    }
}
