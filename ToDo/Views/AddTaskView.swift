//
//  AddTaskView.swift
//  ToDo
//
//  Created by Stephanie Diep on 2021-12-07.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
   @State private var checked: Bool = false
   @State private var checked2: Bool = false
    @State private var checked3: Bool = false
    
    var body: some View {
        
        
        ZStack{
            
     //       Color("system").ignoresSafeArea()
            
      //      VStack(alignment: .leading, spacing: 20) {
               
                ZStack{
                    
                        RoundedRectangle(cornerRadius: 0)
                            .fill(Color.white)
                            .frame(width: 340, height: 300)
                            .padding(.bottom ,00)
                            .padding(.leading ,20)
                    VStack{
                        TextField(
                            "Add habit",
                            text: $title
                        )
                        .textFieldStyle(.automatic)
                        .frame(width: 300)
                    .padding(.bottom ,50)
                        
                        
                        HStack{
//Image(systemName:"circle")
                            Button(action: {
                                self.checked.toggle()
                            }) {
                                Image(systemName: self.checked == true ? "checkmark.circle" :  "circle").foregroundColor(.black)}
                            
//
                            Text("daily")
                            
                            
                            
                            
                            Button(action: {
                                self.checked2.toggle()
                            }) {
                                Image(systemName: self.checked2 == true ? "checkmark.circle" :  "circle").foregroundColor(.black)}
                            
                                .padding(.leading)
                            Text("weekly")
                            
                            
                            
                            
                            Button(action: {
                                self.checked3.toggle()
                            }) {
                                Image(systemName: self.checked3 == true ? "checkmark.circle" :  "circle").foregroundColor(.black)}
                            
                                .padding(.leading)
                            Text("monthy")
                            //completed ? "checkmark.circle" :           "circle")
                        }
                        //.padding(.bottom ,10)
                        
                        Button {
                            
                            if title != "" {
                                realmManager.addTask(taskTitle: title)
                            }
                            dismiss()
                        } label: {
                            Text("Done")
                                .frame(width: 50, height: 50)
                                .foregroundColor(.blue)
                           //     .position(x:300 ,y: 250)
                            //  .padding(.top,200)
                               .padding(.leading ,250)
                            //  .frame(width: 100, height : 100)
                            
                        }
                        
                    }
                    
                     
                    
                    
                    
                }.frame(width: 360, height: 200)
                        .background(Color.red)
                        .cornerRadius(32)
              //          .padding(.bottom ,400)
                        .position(x: 195 ,y:200)
                    
          }   .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(Color("system"))
        
            
    }}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
