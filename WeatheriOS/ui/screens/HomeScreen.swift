import SwiftUI

struct HomeScreen: View {
    @StateObject var vm = WeatherViewModel()
    @State private var goToForecasts: Bool = false
    @State private var goToSettings: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    HomeWeatherIcon(
                        forecastWeatherCode: vm.getCurrentWeatherCode()
                    )
                    Spacer()
                }
                Spacer()
            }
            .navigationDestination(isPresented: $goToForecasts) {
                ForecastScreen()
            }
            .navigationDestination(isPresented: $goToSettings) {
                SettingsScreen()
            }
        }
    }
}

#Preview {
    HomeScreen()
}
