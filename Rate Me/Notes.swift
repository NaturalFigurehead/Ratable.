//
//  Notes.swift
//  Rate Me
//
//  Created by Oliver Reznik on 7/3/15.
//  Copyright (c) 2015 Oliver Reznik. All rights reserved.
//

/*

Parse Request Rationing:
    Login: 1-2
        -Check if new user
            -If yes then save user
    Save Picture: 1
        -Save picture
    Profile: 1 / hour
        -Load data
    Rate: 2 / 100 ratings
        -Pull in data on users
        -Save data for users


options
    -Gender Preference
    -

Info
    -Privacy Policy
    -Facebook Page
    -Twitter Page
    -About





Data and Security
classes
    -Max Index
        -Publicly readable
        -writable only via cloud code
    -User
        -only user has access
        -new objects can only be created via cloud code
        -a user data object is created with the user as a pointer
    -User Data
        -points to a private user object
        -Publicly readable
        -publically writable only via cloud code
        -user has permissions to write to it
        -new objects can only be created via cloud code
        -created with user


Parse Operations
startup
    -get current user
    -queue users
        -score data class

signin/up
    -get max index
        - max index class
    -save/sign in user
        -user class
    -save score data
        -score data class
    -save max index
        -max index class

rate
    -save rated user
        -score data class
    -save rating user
        -user class

change picture
    -save user
        -score data class







Detailed Parse Operations

change picture
    Score data's referenced user is the only one with access to update score data object. Picture url can be changed from the device.

save score
    Send dictionary of ids and the score given. For each id update the object by adding the score and other info. Check to make sure the score is acceptable.

save score given
    Score data's referenced user is the only one with access to update score data object. can be changed from the device.

sign up new user
    Send array of data that is checked for authenticity. Then create the user on the cloud.

queue users
    Get a bunch of publicly readable score data objects

set current user
    query the current users information



CLASSES

_User
    -Username (Facebook ID)
    -Email
    -Name

Score_Data
    -Index
    -User
    -Total_Score
    -Votes
    -n1-n10
    -Total_Score_Given
    -Votes_Given
    -Total_Difference
    -Picture URL
    -Gender
    -Name


MaxIndex
    -i









Left to Do
-Security
    -Score Data ACL Assignment
    -Implement and test data setting on Parse
-Rank
-Logoff / Delete
    -Test further and fix bugs
-In-App Purchase
    -Test further
-Design
-Push Notification
-Error Responses
-Efficiency
-Gender Pref Change Response
-Queue settings
-Notifications for Ratings




*/





/*func createabunchofscoredataobjects() {
    var i = 3000
    while i < 6000 {
        var user = PFObject(className: "Score_Data")
        if randRange(0, 1) == 0 {
            user["gender"] = "male"
        }
        else {
            user["gender"] = "female"
        }
        user["first_name"] = String(randRange(-100, 100))
        user["index"] = i
        user["picture_url"] = "http://lorempixel.com/600/700/"
        let score = Double(randRange(0, 100)) / 10
        let votes = Double(randRange(0, 100))
        user["score"] = score
        user["votes"] = votes
        user["total_score"] = votes * score
        user.saveInBackground()
        i += 1
    }
    pront("done")
}*/