//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by rodolfo silva on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            
            VStack {
                Image("udemy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    //.padding(-50)
                    .frame(height: 80)
                
                Text("Rodolfo Alves da Silva")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("Quicko, Desenvolvedor y Programador")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                
                Text("139.245 estudantes - 59 cursos - 23.535 resenhas")
                    .font(.system(.footnote, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
            }
            

            HStack {
            CardView(imageName: "1", authorName: "Rodolfo Alves da Silva", courseTitle: "Diseño de apps para IOS 13 con Swift UI desde cero", originalPrice: "$199,99", discountPrice: "$10,99")
                    .frame(width: 300)
       
            CardView(imageName: "2", authorName: "Ricardo Alberich, Rodolfo Alves da Silva", courseTitle: "Curso completo de videojuegos con unity 2019", originalPrice: "$199,99", discountPrice: "$11,99")
                    .frame(width: 300)
            
            CardView(imageName: "3", authorName: "Rodolfo Alves da Silva", courseTitle: "Curso completo de Probabilidad y variable Aleatorias para Machine Learning", originalPrice: "$199,99", discountPrice: "$12,99")
                    .frame(width: 300)
            
            CardView(imageName: "4", authorName: "Rodolfo Alves da Silva y Lorenço Valverde", courseTitle: "Resuelve problemas de matemáticas com Sage y  Python", originalPrice: "$99,99", discountPrice: "$10,99")
                    .frame(width: 300)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
