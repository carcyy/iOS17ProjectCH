//
//  MapView.swift
//  iOS17Project
//
//  Created by Carson H on 10/12/23.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let cuboulder = CLLocationCoordinate2D(latitude: 40.005955, longitude: -105.267557)
    static let span = MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8)
}

struct MapView: View {
    
    @EnvironmentObject var buttonViewModel : ButtonViewModel
    
    var body: some View {
        VStack {
            Map {
                Annotation("CU Boulder - Farrand Field",
                           coordinate: .cuboulder,
                           anchor: .bottom
                ) {
                    ZStack {
                        Image(systemName: "leaf.fill")
                            .padding(2)
                        RoundedRectangle(cornerRadius: 3)
                            .fill(.green)
                            .opacity(0.5)
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(
                                Color.green,
                                style: StrokeStyle(
                                    lineWidth: 2
                                )
                            )
                    }
                }
            }
            .mapStyle(.imagery(elevation: .realistic))
            //adding buttons for search goes here
            }
        }
    }
