//
//  ForecastScreen.swift
//  WeatheriOS
//
//  Created by Brian Walker Jr on 5/4/26.
//

import SwiftUI

struct ForecastScreen: View {
    @StateObject var vm = WeatherViewModel()
    
    @State private var goToDetailScreen: Bool = false
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach (vm.forecasts) { forcast in
                    CardView(
                        content: {
                            VStack(alignment: .leading) {
                                Text("Date: \(forcast.date)")
                                Text("Sunrise \(forcast.sunrise)")
                                Text("Sunset \(forcast.sunset)")
                            }
                        },
                        onClick: {
                            
                        }
                    )
                }
            }
        }
    }
}

#Preview {
    ForecastScreen()
}
