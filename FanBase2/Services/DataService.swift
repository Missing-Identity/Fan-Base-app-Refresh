//
//  DataService.swift
//  FanBase2
//
//  Created by Unmilan on 01/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation
class DataService {
    
    static let instance = DataService()
    
    private let movies = [
        Movie(title: "Avengers: Endgame"),
        Movie(title: "Titanic"),
        Movie(title: "Whiplash")
    ]
    
    private let avengers = [
        Actor(name: "Robert Downey Jr", imageName: "800px-Robert_Downey_Jr_2014_Comic_Con_(cropped).jpg", generalInfo: "Robert John Downey Jr. is an American actor, producer, and singer. His career has been characterized by critical and popular success in his youth, followed by a period of substance abuse and legal troubles, before a resurgence of commercial success in middle age."),
        Actor(name: "Chris Evans", imageName: "chris-evans-feat-image.jpg", generalInfo: "Christopher Robert Evans is an American actor. He began his career with appearances in several television series, such as in Opposite Sex in 2000."),
        Actor(name: "Paul Rudd", imageName: "800px-Paul_Rudd_2_SDCC_2014.jpg", generalInfo: "Paul Stephen Rudd is an American actor, comedian, screenwriter, and producer. He studied theater at the University of Kansas and the American Academy of Dramatic Arts before making his acting debut in 1992 with the NBC drama series Sisters."),
        Actor(name: "Chris Hemsworth", imageName: "800px-Chris_Hemsworth_by_Gage_Skidmore_2_(cropped).jpg", generalInfo: "Christopher Hemsworth is an Australian actor. He rose to prominence in his native Australia for playing Kim Hyde in the Australian television series Home and Away before beginning a film career in Hollywood."),
        Actor(name: "Chadwick Boseman", imageName: "6b4606e999eaa3460cfa3035e33e3dc8db-chadwick-boseman-931925976.rhorizontal.w700.jpg", generalInfo: "Chadwick Aaron Boseman was an American actor. Born and raised in South Carolina, he took up acting professionally after he studied directing at Howard University. He began his career with appearances on television and was a series regular on the short-lived Lincoln Heights and Persons Unknown.")
    ]
    
    private let shippers = [
        Actor(name: "Leonardo Dicaprio", imageName: "Leonardo_Dicaprio.jpg", generalInfo: "Leonardo Wilhelm DiCaprio is an American actor, producer, and environmentalist. He has often played unconventional parts, particularly in biopics and period films. As of 2019, his films have grossed US$7.2 billion worldwide, and he has placed eight times in annual rankings of the highest-paid actors in the world."),
        Actor(name: "Kate Winslet", imageName: "Kate-Winslet.jpg", generalInfo: "Kate Elizabeth Winslet CBE is an English actress. She is particularly known for her work in period dramas, and often portrays angst-ridden women. Winslet is the recipient of various accolades, including three British Academy Film Awards, and is among the few performers to have won Academy, Emmy, and Grammy Awards."),
        Actor(name: "Kathy Bates", imageName: "Kathy-Bates.jpg", generalInfo: "Kathleen Doyle Bates is an American actress and director. She is the recipient of numerous accolades, including an Academy Award, two Primetime Emmy Awards, and two Golden Globe Awards.")
    ]
    
    private let musicians = [
        Actor(name: "J.K. Simmons", imageName: "JK_Simmons.jpg", generalInfo: "Jonathan Kimble Simmons is an American television, film, and voice actor. In television, he is known for his work by playing Dr. Emil Skoda on the NBC series Law & Order, Vernon Schillinger on the HBO series Oz, and Assistant Police Chief Will Pope on TNT's The Closer."),
        Actor(name: "Miles Teller", imageName: "Miles-Teller.jpg", generalInfo: "Miles Alexander Teller is an American actor. His films include The Spectacular Now, Whiplash, The Divergent Series, Bleed for This and Thank You for Your Service."),
        Actor(name: "Melissa Benoist", imageName: "Melissa.jpg", generalInfo: "Melissa Marie Benoist is an American actress and singer. She has performed on stage and in television and film. She is known for her portrayal of the titular character in the CBS/CW DC Comics–based superhero drama series Supergirl.")
    ]
    
    func getActors(forTitle: String) -> [Actor] {
        var movieActors = [Actor]()
        if forTitle == "Avengers: Endgame" {
            movieActors = avengers
        }
        else if forTitle == "Titanic" {
            movieActors = shippers
        }
        else {
            movieActors = musicians
        }
        
        return movieActors
    }
    
    func getMovies() -> [Movie] {
        return movies
    }
}
