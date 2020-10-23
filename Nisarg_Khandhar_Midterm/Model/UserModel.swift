
//
//  UserModel.swift
//  Nisarg_Khandhar_Midterm
//
//  Created by Nisarg on 2020-10-23.
//

import Foundation
import CoreData
import SwiftUI
import UIKit

public class UserModel: ObservableObject{
   // @EnvironmentObject var userSettings: UserSettings
    var gamePlayed : Int = 0
    var won : Bool = false
    var lost : Bool = false
}
