// A basic vibration solution.

// More advanced Vibration solution:
// https://developer.apple.com/documentation/corehaptics/chhapticengine?language=objc

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 20) {
                ForEach(Vibration.allCases) { virationCase in
                    Button {
                        virationCase.vibrateRepeatedly()
                    } label: {
                        Text(virationCase.rawValue)
                    }
                }
            }
            Spacer()
            VStack(spacing: 20) {
                ForEach(Vibration.allCases) { virationCase in
                    Button {
                        virationCase.vibrateRepeatedly()
                    } label: {
                        Text(virationCase.rawValue + " (xN)")
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


