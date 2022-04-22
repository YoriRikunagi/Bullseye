//
//  Textviews.swift
//  Bullseye
//
//  Created by Роман Кухаренко on 16.04.2022.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
        
    }
}

struct LabelText : View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyText : View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)

        
    }
}

struct ButtonText : View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}



struct Textviews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "99")
            LabelText(text: "Score")
            LabelText(text: "Round")
            BodyText(text: "You scored 200 Points \n🎉🎉🎉")
            ButtonText(text: "Start New Round")
        }
        
    }
}

