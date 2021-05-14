//
//  WorkoutDetailView.swift
//  HomeGains
//
//  Created by Raul Groșan on 15.05.2021.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var workout: Workout
    
    var body: some View {
        VStack(alignment: .leading){
            Text(workout.day)
                .padding(.leading, 30)
                .font(.largeTitle)
            Text(workout.bodyPart)
                .padding(.leading, 30)
                .font(.title)
            List(workout.routine, id: \.self){
                exercise in
                Text(exercise)
                    
            }
            .font(.title2)
        }
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(day: "Monday", bodyPart: "Legs", image: "cross-fit-stretch", routine: ["Warmup", "Squats", "Standing Calf Raises"]))
    }
}
