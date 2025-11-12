import SwiftUI

struct SeleccionView: View {
    let pregunta: Pregunta
    let queryIndex: Int
    let opcSeleccion: [Bool]
    let seleccionIndex: Int

    var body: some View {
        ZStack(alignment: .center) {
            HStack(spacing: 20) {
                if pregunta.respuestaImg.count > seleccionIndex {
                    Image(pregunta.respuestaImg[seleccionIndex])
                        .resizable()
                        .scaledToFit()
                       
                } else {
                    Spacer().frame(width: 20)
                }

                Text(pregunta.respuestaTexto[seleccionIndex])
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .multilineTextAlignment(.leading)
                if pregunta.respuestaSubtexto.count > seleccionIndex {
                Text(pregunta.respuestaSubtexto[seleccionIndex])
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        .multilineTextAlignment(.leading)
                        
                }
            }
        }
    }
}

#Preview {
    SeleccionView(
        pregunta: Pregunta(
            query: "hi",
            respuestaImg : ["star.fill"],
            respuestaTexto: ["Texto de ejemplo"],
            respuestaSubtexto: ["lol"]
        ),
        queryIndex: 0,
        opcSeleccion: [false, true, false],
        seleccionIndex: 0
    )
}
