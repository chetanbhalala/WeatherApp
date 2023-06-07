//
//  AboutUs.swift
//  WeatherApp
//
//  Created by Chetan Bhalara on 6/5/23.
//

import SwiftUI

struct AboutUs: View {
    var presentingVC: UIViewController?
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentingVC?.presentedViewController?.dismiss(animated: true)
                }) {
                Group {
                    Spacer().frame(width: 0, height: 36.0, alignment: .topLeading)
                    HStack {
                        
                        Text("Back")
                            .bold()
                            .font(.system(size: 17.0))
                            .padding(.leading, 4.0)
                    }
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width - 60, height: 0)
                        .padding(.top, 6.0)
                }
            }
            Text("About Us")
                .font(.title2)
                .fontWeight(.bold)
                .padding()

            // This should be the last, put everything to the top
            Spacer()
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
