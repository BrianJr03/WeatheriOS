import SwiftUI

struct HomeScreen: View {
    @StateObject var vm = WeatherViewModel()
    @State private var goToForecasts: Bool = false
    @State private var goToSettings: Bool = false
        
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 0) {
                Color.clear.frame(height: 250)
                ForEach(vm.getWeatherHeadline()) { line in
                    WeatherLineView(line: line)
                }
                Text("Go take a look outside and see for yourself.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(
                        top: 20,
                        leading: 30,
                        bottom: 0,
                        trailing: 0
                    ))
                Spacer()
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.black)
                    .padding(EdgeInsets(
                        top: 0,
                        leading: 30,
                        bottom: 16,
                        trailing: 30
                    ))
                HStack(alignment: .center, spacing: 0) {
                    Text(vm.getWeatherSarcasmText())
                        .font(.headline)
                        .padding(.leading, 30)
                    Spacer()
                    Rectangle()
                        .frame(width: 1, height: 40)
                        .foregroundStyle(.black)
                    Spacer()
                    Text(vm.getTempRange())
                        .font(.headline)
                        .padding(.trailing, 30)
                }
            }
            .background(
                getWeatherGradient(for: vm.getCurrentWeatherCode())
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .topLeading) {
                HomeWeatherIcon(
                    forecastWeatherCode: vm.getCurrentWeatherCode()
                )
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
