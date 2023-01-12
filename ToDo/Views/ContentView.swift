//
//  ContentView.swift
//  ToDo
//
//  Created by Stephanie Diep on 2021-12-06.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            //Color(.red).ignoresSafeArea()
            
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
            //                .padding(.bottom ,800)
                .padding(.trailing ,20)
                .onTapGesture {
                    showAddTaskView.toggle()
                }
            
        }
                .sheet(isPresented: $showAddTaskView) {
                    AddTaskView()
                        .environmentObject(realmManager)
                }
            
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color("system"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
