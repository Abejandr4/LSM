//
//  InicioView.swift
//  LSM
//
//  Created by iOS Lab on 10/11/25.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("Aprende Lengua de Señas Mexicana")
                    .accessibilityLabel(Text("Aprende Lengua de Señas Mexicana"))
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color.black)
                    .padding()
                
                
                NavigationLink(destination: CreateAccountView()) {
                    Text("Crear cuenta")
                        .bold()
                        .font(.title2)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                
                NavigationLink(destination: LogInView()) {
                    Text("Iniciar sesión")
                        .bold()
                        .font(.title2)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                }

            }
            .navigationTitle("Inicio")
        }
    }
}

#Preview {
    InicioView()
}
