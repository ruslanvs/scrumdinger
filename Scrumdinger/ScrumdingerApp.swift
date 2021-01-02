//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ruslan Suvorov on 12/30/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
