/*
 Midterm Project
 
 Aleksander Lubczynski
 
 October 21 2025
 */

import SwiftUI

struct ContentView: View {

    /* This loads all of the images and data from the JSON file
     */
    let subjects: [Subject] = loadData("Data.json")

    var body: some View {
        NavigationStack {

            /* Displays the images in a scrollable list format
             */
            List(subjects) { item in
                NavigationLink(destination: DetailView(subject: item)) {
                    HStack {
                        /* Displays a small preview for the image location
                         */
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        /* This portrays the name of the locations in a bold formatted title
                         */
                        Text(item.name)
                            .font(.headline)
                            .padding(.leading, 8)
                    }
                }
            }
            .navigationTitle("Aleks' Visit List")
        }
    }
}

struct DetailView: View {
    var subject: Subject
    
    var body: some View {
        ScrollView {
            VStack {
                
                /* The function which displays the main image for the chosen locations
                 */
                Image(subject.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
                
                /*This portrays the name of the locations in a bold formatted title
                 */
                Text(subject.name)
                    .font(.title)
                    .bold()

                /*
                 This shows the description of the locations which is padded
                 */
                Text(subject.description)
                    .padding()
            }
        }
        .navigationTitle("Details")
    }
}

#Preview {
    ContentView()
}
