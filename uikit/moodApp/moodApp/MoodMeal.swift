//
//  MoodMeal.swift
//  moodApp
//
//  Created by Manik Lakhanpal on 07/08/25.
//

import Foundation

struct Mood {
    var emoji: String
    var name: String
}

struct Activity {
    var emoji: String
    var name: String
}

struct Meal {
    var mood: Mood
    var activity: Activity
    var suggestedMeal: String
}

var meals: [Meal] = [
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Happy Meal"),
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Light Happy Meal"),
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Moderate Happy Meal"),
    Meal(mood: Mood(emoji: "😊", name: "Happy"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Intense Happy Meal"),
  
    
    
    Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Sad Meal"),
    Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Light Sad Meal"),
    Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Moderate Sad Meal"),
    Meal(mood: Mood(emoji: "😢", name: "Sad"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Intense Sad Meal"),
   
   
    
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Happy Meal"),
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Light Stressed Meal"),
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Moderate Stressed Meal"),
    Meal(mood: Mood(emoji: "😫", name: "Stressed"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Intense Stressed Meal"),
    
    
    
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🪑", name: "Sedentary"), suggestedMeal: "Happy Meal"),
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🚶‍♂️", name: "Light"), suggestedMeal: "Light Energetic Meal"),
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏃", name: "Moderate"), suggestedMeal: "Moderate Energetic Meal"),
    Meal(mood: Mood(emoji: "⚡️", name: "Energetic"), activity: Activity(emoji: "🏋️‍♀️", name: "Intense"), suggestedMeal: "Intense Energetic Meal"),
]
