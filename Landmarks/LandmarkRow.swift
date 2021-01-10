//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Zian Meng on 12/29/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text(landmark.name)
            
            if(landmark.isFavorite == true){
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            Spacer()
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
//
//        ForEach(landmarks, id: \.self) { landmark in LandmarkList()
//                LandmarkRow(landmark: landmark)
//        }
        
        
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
