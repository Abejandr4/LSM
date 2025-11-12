//
//  LogInView.swift
//  LSM
//
//  Created by iOS Lab on 11/11/25.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State private var nombre: String = ""
    @State private var cumpleaños = Date()
    @State private var email: String = ""
    @State private var contraseña: String = ""
    @State private var showPassword: Bool = false
    @State private var errorMessage: String?

    var body: some View {
        VStack(spacing: 24) {
            Text("Ingresa tus datos")
                .font(.largeTitle)
                .bold()
                .padding(.top, 40)
            
            TextField("Nombre", text: $nombre)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)

            DatePicker("Fecha de nacimiento", selection: $cumpleaños, displayedComponents: [.date])
            
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(8)
            

            HStack {
                if showPassword {
                    TextField("Contraseña", text: $contraseña)
                } else {
                    SecureField("Contraseña", text: $contraseña)
                }
                Button(action: { showPassword.toggle() }) {
                    Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)
            
            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .font(.footnote)
            }
            
            Button(action: handleLogin) {
                Text("Ingresar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.top, 10)
            
            Spacer()
        }
        .padding(.horizontal, 32)
    }
    
    func handleLogin() {
        errorMessage = nil
        
        guard !email.isEmpty, !contraseña.isEmpty else {
            errorMessage = "Ingresar todos los datos."
            return
        }
    }
}

#Preview {
    CreateAccountView()
}
