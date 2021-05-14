//
//  ContentView.swift
//  HomeGains
//
//  Created by Raul Groșan on 15.05.2021.
//

import SwiftUI

struct ContentView: View {
    let workouts = workoutData
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                //zstack = objects are stacked above eachother
                ZStack {
                    Image("chin-ups")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height:300)
                    
                    //vstack = objects stacked vertically
                    VStack {
                        
                        Spacer()
                        
                        Text("At Home Workouts")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("For Beginners")
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(width: 370)
                    .background(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 0)))
                }
                .frame(width:360, height:300)
                .cornerRadius(20)
                .clipped()
                .shadow(radius: 8)
                //.padding(.top, 20)
                .padding()
                
                Text("Workout programs")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                
                //hstack = horizontally
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        ForEach(workouts) {workout in
                            //card
                            NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                                ZStack {
                                    Image(workout.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height:250)
                                    
                                    VStack {
                                        Spacer()
                                        Text(workout.day)
                                            .font(.title2)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                        
                                        Text(workout.bodyPart)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        
                                    }
                                    .padding()
                                    .frame(width: 150)
                                    .background(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 0)))
                                }
                                .frame(width:175, height:220)
                                .clipped()
                                .cornerRadius(20)
                                .shadow(radius: 8)
                            }
                        }
                    }
                    .padding()
                }
                .offset(x:0, y: -15)
                Spacer()
            
            }
            .navigationBarTitle("Home Workouts")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Workout: Identifiable{
    var id = UUID()
    var day: String
    var bodyPart: String
    var image: String
    var routine: [String]
}

let workoutData = [
    Workout(day: "Monday", bodyPart: "Push", image: "person-does-a-push-ups-outdoors-in-the-grass", routine: ["Warmup",  "Pushups","Lateral raises" , "Tricep extensions"]),
    Workout(day: "Tuesday", bodyPart: "Pull", image: "chin-ups-at-the-park", routine: ["Warmup", "Pullups", "DB Curls"]),
    Workout(day: "Wednesday", bodyPart: "Legs", image: "cross-fit-stretch", routine: ["Warmup", "Squats", "Standing Calf Raises"]),
    Workout(day: "Thursday", bodyPart: "Push", image: "exercise-balance", routine: ["Warmup", "Dips", "Pike press", "Face Pulls"]),
    Workout(day: "Friday", bodyPart: "Pull", image: "fitness-workout", routine: ["Warmup", "Chin Ups", "Bodyweight rows", "Preacher curls"]),
    Workout(day: "Saturday", bodyPart: "Legs", image: "person-lays-on-grass-and-crunches-in-a-situp", routine: ["Warmup", "Squats", "Lunges", "Calf raises"])
]
