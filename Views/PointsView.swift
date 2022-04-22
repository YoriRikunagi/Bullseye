//
//  PointsView1.swift
//  Bullseye
//
//  Created by Роман Кухаренко on 20.04.2022.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderVue: roundedValue)
        
        VStack(spacing: 10){
            InstructionText(text: "The slider value is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) Points \n🎉🎉🎉")
            Button(action: {
                alertIsVisible = false
                game.startNewRound(points: points)
            }) {
                ButtonText(text: "Start New Round") 
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    
    static var alertIsVisible = Binding.constant(false)
    static var sliderValue = Binding.constant(50.0)
    static var game = Binding.constant(Game())
    
    static var previews: some View {
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .preferredColorScheme(.dark)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
