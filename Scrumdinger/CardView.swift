//
//  CardView.swift
//  Scrumdinger
//
//  Created by Ruslan Suvorov on 12/31/20.
//

import Foundation
import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel(Text("Attendees"))
                    .accessibilityValue(Text("\(scrum.attendees.count)"))
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock" )
                    .padding(.trailing, 20.0)
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel(Text("Meeting length"))
                    .accessibilityValue(Text("\(scrum.lengthInMinutes) minutes"))
            }
            .font(/*@START_MENU_TOKEN@*/.caption/*@END_MENU_TOKEN@*/)
            
        }
        .padding()
        .foregroundColor(scrum.color.accessibleFontColor) // @TODO fix
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.data[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.color)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}