//
//  SmallAddButton.swift
//  ToDo
//
//  Created by Stephanie Diep on 2021-12-06.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        
            
            VStack{
                
          
                    
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .padding(.bottom ,750)
                        .padding(.leading ,300)
                        .accessibilityHint("add new habit")
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
