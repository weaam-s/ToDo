//
//  TaskRow.swift
//  ToDo
//
//  Created by Stephanie Diep on 2021-12-07.
//

import SwiftUI

struct TaskRow: View {
    var task: String
  //  var completed: Bool
    
    var body: some View {
        
            // If task is completed, show a checkmark circle, otherwise show an empty circle
//            Image(systemName: completed ? "checkmark.circle" :           "circle")
        ZStack{
          Color("system").ignoresSafeArea()
            
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.white)
                    .frame(width: 340, height: 100)
                   // .padding(.bottom , 00)
                    .padding(.leading ,20)
               
                
            }.frame(width: 360, height: 80)
                .background(Color.yellow)
                .cornerRadius(32)
           
                                        
            Text(task)
               .frame(maxWidth: 300, alignment: .leading)
            
        }.scrollContentBackground(.hidden)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(Color("system"))
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do somthing")
    }
}
