//
//  AccountView.swift
//  Appetizers
//
//  Created by joao camargo on 10/06/21.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")){
                    TextField("First Name",text: $viewModel.user.firstName)
                    TextField("Last Name",text: $viewModel.user.lastName)
                    TextField("email",text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthDate,displayedComponents: [.date])
                    
                    HStack(alignment: .center) {
                        Spacer()
                        Button(action: {
                            viewModel.saveChanges()
                        }, label: {
                            Text("Save Changes").foregroundColor(.white)
                                .font(.title3).fontWeight(.semibold)
                                .frame(width: 300, height: 50).background(Color.brandPrimary)
                                .cornerRadius(10)
                        })
                        Spacer()
                    }.padding()
                }        
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                } .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("🙋‍♂️ Account")
        }
        .onAppear(perform: viewModel.retrieveUser)
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButon)
        }
    }
    
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
