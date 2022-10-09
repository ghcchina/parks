//
//  LandmarkRow.swift
//  SaySomething
//
//  Created by  Hongchao Guan on 9/15/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            Image(systemName: landmark.isFavorite ? "star.fill" : "star")
                .foregroundColor(landmark.isFavorite ? .yellow : .gray)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
