//
//  AccountView.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")){
                    TextField("First Name",text: $firstName)
                    TextField("Last Name",text: $lastName)
                    TextField("email",text: $email)
                    DatePicker("Birthday", selection: $birthDate,displayedComponents: [.date])
                }
                
                
                Section(footer:
                            Button(action: {
                                
                            }, label: {
                                Text("Save Changes").foregroundColor(.white)
                                    .font(.title3).fontWeight(.semibold)
                                    .frame(width: 300, height: 50).background(Color.brandPrimary)
                                    .cornerRadius(10)
                            })) {
                        EmptyView()
                    }
                
                
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: .constant(false))
                    Toggle("Frequent Refills", isOn: .constant(false))
                }
            }
            
            
            
           
        }.navigationTitle("🙋‍♂️ Account")
    }
    
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
