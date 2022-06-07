//
//  MountainAirportMacApp.swift
//  MountainAirportMac
//
//  Created by Александр Воробьев on 05.06.2022.
//

import SwiftUI

@main
struct MountainAirportMacApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .commands {
      SidebarCommands()
    }
  }
}

enum DisplayState: Int {
  case none
  case flightBoard
  case searchFlights
  case awards
  case timeline
  case lastFlight
}
