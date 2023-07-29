import SwiftUI

struct DataView: View {
    @Environment(\.dismiss) var dismiss
    @State var textentered = ""
    @State var NRICno = ""
    @State var yourname = ""
    @State var fathername = ""
    @State var fatherbankaccount = ""
    @State var mothername = ""
    @State var motherbankaccount = ""
    @State var Occupation = ""
    @State var IPAdress = ""
    @State var OTP = ""
    @State var discordID = ""
    
    @State var address: String
    var body: some View {
        Form {
            Section("INTRO") {
                Text("To finish this app, please do these things.")
            }
            
            Section("Bank details"){
                TextField("Bank Name", text: $textentered)
                TextField("Bank account number", text: $textentered)
                TextField("NRIC No.", text: $NRICno)
                TextField("IP adress", text: $IPAdress)
                TextField("Father name", text: $fathername)
                TextField("Father's bank account", text: $fatherbankaccount)
                TextField("Mother name", text: $mothername)
                TextField("Mother bank account", text: $motherbankaccount)
                TextField("OTP that should be sent to you by your bank", text: $OTP)
            }
            Section("Personal Details") {
                TextField("Address", text: $address)
            }
            
            Section("SUBMIT") {
                Button {
                    dismiss()
                } label: {
                    Text("Submit information!")
                        .padding()
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}
